;; Flash Loan Protection for Staking Pool
;; Prevents flash loan attacks on staking rewards

;; Constants
(define-constant ERR-FLASH-LOAN-DETECTED (err u900))
(define-constant ERR-SUSPICIOUS-ACTIVITY (err u901))
(define-constant MIN-STAKE-DURATION u144) ;; 24 hours minimum

;; Data Maps
(define-map transaction-history principal {
    last-stake: uint,
    last-unstake: uint,
    stake-count: uint,
    unstake-count: uint,
    total-staked: uint
})

(define-map block-activity uint {
    total-stakes: uint,
    total-unstakes: uint,
    unique-users: uint
})

;; Check for flash loan patterns
(define-read-only (detect-flash-loan (user principal) (amount uint))
    (let ((history (default-to {last-stake: u0, last-unstake: u0, stake-count: u0, unstake-count: u0, total-staked: u0}
                              (map-get? transaction-history user)))
          (current-block block-height))
        {
            is-suspicious: (or 
                (and (> (get last-stake history) u0) 
                     (< (- current-block (get last-stake history)) MIN-STAKE-DURATION))
                (> amount (* (get total-staked history) u10)) ;; 10x previous stakes
                (> (get stake-count history) u10)), ;; Too many stakes
            risk-score: (calculate-risk-score history amount),
            recommended-action: (if (> amount u1000000000) "manual-review" "auto-approve")
        }))

;; Calculate risk score
(define-read-only (calculate-risk-score (history {last-stake: uint, last-unstake: uint, stake-count: uint, unstake-count: uint, total-staked: uint}) (amount uint))
    (let ((frequency-risk (if (> (get stake-count history) u5) u30 u0))
          (amount-risk (if (> amount u100000000) u40 u0)) ;; 100 STX
          (timing-risk (if (< (- block-height (get last-stake history)) u6) u30 u0))) ;; Same hour
        (+ frequency-risk (+ amount-risk timing-risk))))

;; Update transaction history
(define-public (update-stake-history (user principal) (amount uint) (action (string-ascii 10)))
    (let ((current-history (default-to {last-stake: u0, last-unstake: u0, stake-count: u0, unstake-count: u0, total-staked: u0}
                                      (map-get? transaction-history user))))
        (if (is-eq action "stake")
            (map-set transaction-history user {
                last-stake: block-height,
                last-unstake: (get last-unstake current-history),
                stake-count: (+ (get stake-count current-history) u1),
                unstake-count: (get unstake-count current-history),
                total-staked: (+ (get total-staked current-history) amount)
            })
            (map-set transaction-history user {
                last-stake: (get last-stake current-history),
                last-unstake: block-height,
                stake-count: (get stake-count current-history),
                unstake-count: (+ (get unstake-count current-history) u1),
                total-staked: (if (>= (get total-staked current-history) amount)
                                 (- (get total-staked current-history) amount)
                                 u0)
            }))
        (update-block-activity)
        (ok true)))

;; Update block-level activity tracking
(define-private (update-block-activity)
    (let ((current-activity (default-to {total-stakes: u0, total-unstakes: u0, unique-users: u0}
                                       (map-get? block-activity block-height))))
        (map-set block-activity block-height {
            total-stakes: (+ (get total-stakes current-activity) u1),
            total-unstakes: (get total-unstakes current-activity),
            unique-users: (+ (get unique-users current-activity) u1)
        })
        (ok true)))

;; Check if block has suspicious activity
(define-read-only (is-block-suspicious (block uint))
    (match (map-get? block-activity block)
        activity-data
        (or (> (get total-stakes activity-data) u100) ;; Too many stakes in one block
            (> (get total-unstakes activity-data) u100)) ;; Too many unstakes in one block
        false))
