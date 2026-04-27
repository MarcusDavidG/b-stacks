;; Sports Data Oracle Feed
;; Provides real-time sports data for betting and fantasy applications

;; Constants
(define-constant ERR-GAME-NOT-FOUND (err u1200))
(define-constant ERR-INVALID-SPORT (err u1201))
(define-constant ERR-GAME-NOT-FINISHED (err u1202))

;; Data Maps
(define-map sports-games {sport: (string-ascii 20), game-id: uint} {
    home-team: (string-ascii 30),
    away-team: (string-ascii 30),
    home-score: uint,
    away-score: uint,
    game-status: (string-ascii 20),
    start-time: uint,
    end-time: (optional uint),
    season: (string-ascii 10),
    week: uint
})

(define-map player-stats {sport: (string-ascii 20), game-id: uint, player-id: uint} {
    player-name: (string-ascii 50),
    team: (string-ascii 30),
    points: uint,
    assists: uint,
    rebounds: uint,
    other-stats: (list 10 uint),
    fantasy-points: uint
})

(define-map team-standings {sport: (string-ascii 20), season: (string-ascii 10), team: (string-ascii 30)} {
    wins: uint,
    losses: uint,
    ties: uint,
    points-for: uint,
    points-against: uint,
    win-percentage: uint
})

(define-map betting-odds {sport: (string-ascii 20), game-id: uint} {
    home-odds: int,
    away-odds: int,
    over-under: uint,
    spread: int,
    last-updated: uint,
    source: principal
})

;; Update game score
(define-public (update-game-score (sport (string-ascii 20)) (game-id uint) (home-score uint) (away-score uint) (status (string-ascii 20)))
    (let ((game-data (unwrap! (map-get? sports-games {sport: sport, game-id: game-id}) (err ERR-GAME-NOT-FOUND))))
        (map-set sports-games {sport: sport, game-id: game-id} (merge game-data {
            home-score: home-score,
            away-score: away-score,
            game-status: status,
            end-time: (if (is-eq status "finished") (some block-height) none)
        }))
        ;; Update team standings if game is finished
        (if (is-eq status "finished")
            (update-team-standings sport (get season game-data) (get home-team game-data) (get away-team game-data) home-score away-score)
            (ok true))))

;; Create new game
(define-public (create-game (sport (string-ascii 20)) (game-id uint) (home-team (string-ascii 30)) (away-team (string-ascii 30)) (start-time uint) (season (string-ascii 10)) (week uint))
    (map-set sports-games {sport: sport, game-id: game-id} {
        home-team: home-team,
        away-team: away-team,
        home-score: u0,
        away-score: u0,
        game-status: "scheduled",
        start-time: start-time,
        end-time: none,
        season: season,
        week: week
    })
    (ok true))

;; Update player statistics
(define-public (update-player-stats (sport (string-ascii 20)) (game-id uint) (player-id uint) (player-name (string-ascii 50)) (team (string-ascii 30)) (points uint) (assists uint) (rebounds uint))
    (let ((fantasy-points (calculate-fantasy-points sport points assists rebounds)))
        (map-set player-stats {sport: sport, game-id: game-id, player-id: player-id} {
            player-name: player-name,
            team: team,
            points: points,
            assists: assists,
            rebounds: rebounds,
            other-stats: (list u0 u0 u0 u0 u0 u0 u0 u0 u0 u0),
            fantasy-points: fantasy-points
        })
        (ok fantasy-points)))

;; Update betting odds
(define-public (update-betting-odds (sport (string-ascii 20)) (game-id uint) (home-odds int) (away-odds int) (over-under uint) (spread int))
    (map-set betting-odds {sport: sport, game-id: game-id} {
        home-odds: home-odds,
        away-odds: away-odds,
        over-under: over-under,
        spread: spread,
        last-updated: block-height,
        source: tx-sender
    })
    (ok true))

;; Calculate fantasy points based on sport
(define-read-only (calculate-fantasy-points (sport (string-ascii 20)) (points uint) (assists uint) (rebounds uint))
    (if (is-eq sport "basketball")
        (+ points (+ (* assists u2) rebounds)) ;; 1pt per point, 2pts per assist, 1pt per rebound
        (if (is-eq sport "football")
            (+ (* points u6) (* assists u4)) ;; 6pts per TD, 4pts per assist
            (+ points assists)))) ;; Default scoring

;; Update team standings after game completion
(define-private (update-team-standings (sport (string-ascii 20)) (season (string-ascii 10)) (home-team (string-ascii 30)) (away-team (string-ascii 30)) (home-score uint) (away-score uint))
    (let ((home-won (> home-score away-score)))
        ;; Update home team
        (update-single-team-standing sport season home-team home-won home-score away-score)
        ;; Update away team
        (update-single-team-standing sport season away-team (not home-won) away-score home-score)
        (ok true)))

;; Update individual team standing
(define-private (update-single-team-standing (sport (string-ascii 20)) (season (string-ascii 10)) (team (string-ascii 30)) (won bool) (points-for uint) (points-against uint))
    (let ((current-standing (default-to {wins: u0, losses: u0, ties: u0, points-for: u0, points-against: u0, win-percentage: u0}
                                       (map-get? team-standings {sport: sport, season: season, team: team}))))
        (let ((new-wins (if won (+ (get wins current-standing) u1) (get wins current-standing)))
              (new-losses (if won (get losses current-standing) (+ (get losses current-standing) u1)))
              (new-points-for (+ (get points-for current-standing) points-for))
              (new-points-against (+ (get points-against current-standing) points-against))
              (total-games (+ new-wins new-losses)))
            (map-set team-standings {sport: sport, season: season, team: team} {
                wins: new-wins,
                losses: new-losses,
                ties: (get ties current-standing),
                points-for: new-points-for,
                points-against: new-points-against,
                win-percentage: (if (> total-games u0) (/ (* new-wins u1000) total-games) u0)
            })
            (ok true))))

;; Get game result
(define-read-only (get-game-result (sport (string-ascii 20)) (game-id uint))
    (match (map-get? sports-games {sport: sport, game-id: game-id})
        game-data
        (some {
            winner: (if (> (get home-score game-data) (get away-score game-data))
                       (get home-team game-data)
                       (get away-team game-data)),
            final-score: {home: (get home-score game-data), away: (get away-score game-data)},
            margin: (if (> (get home-score game-data) (get away-score game-data))
                       (- (get home-score game-data) (get away-score game-data))
                       (- (get away-score game-data) (get home-score game-data)))
        })
        none))
