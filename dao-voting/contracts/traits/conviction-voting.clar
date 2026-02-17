;; Conviction Voting System
;; Voting power increases over time based on conviction strength

;; Constants
(define-constant ERR-INSUFFICIENT-CONVICTION (err u1300))
(define-constant ERR-PROPOSAL-EXECUTED (err u1301))
(define-constant CONVICTION-GROWTH-RATE u105) ;; 5% growth per period

;; Data Maps
(define-map conviction-votes {proposal-id: uint, voter: principal} {
    initial-stake: uint,
    conviction-start: uint,
    last-update: uint,
    current-conviction: uint,
    vote-direction: bool ;; true for support, false for oppose
})

(define-map proposal-conviction {proposal-id: uint} {
    total-support-conviction: uint,
    total-oppose-conviction: uint,
    conviction-threshold: uint,
    last-conviction-update: uint
})

(define-map conviction-history {proposal-id: uint, block: uint} {
    support-conviction: uint,
    oppose-conviction: uint,
    total-voters: uint
})

;; Cast conviction vote
(define-public (cast-conviction-vote (proposal-id uint) (stake-amount uint) (support bool))
    (let ((existing-vote (map-get? conviction-votes {proposal-id: proposal-id, voter: tx-sender})))
        (match existing-vote
            ;; Update existing vote
            vote-data
            (update-conviction-vote proposal-id stake-amount support vote-data)
            ;; Create new vote
            (create-conviction-vote proposal-id stake-amount support))))

;; Create new conviction vote
(define-private (create-conviction-vote (proposal-id uint) (stake-amount uint) (support bool))
    (begin
        (map-set conviction-votes {proposal-id: proposal-id, voter: tx-sender} {
            initial-stake: stake-amount,
            conviction-start: block-height,
            last-update: block-height,
            current-conviction: stake-amount,
            vote-direction: support
        })
        (update-proposal-conviction proposal-id stake-amount support true)
        (ok true)))

;; Update existing conviction vote
(define-private (update-conviction-vote (proposal-id uint) (new-stake uint) (support bool) (existing-vote {initial-stake: uint, conviction-start: uint, last-update: uint, current-conviction: uint, vote-direction: bool}))
    (let ((current-conviction (calculate-current-conviction existing-vote))
          (old-support (get vote-direction existing-vote)))
        ;; Remove old conviction
        (update-proposal-conviction proposal-id (get current-conviction existing-vote) old-support false)
        ;; Add new conviction
        (map-set conviction-votes {proposal-id: proposal-id, voter: tx-sender} {
            initial-stake: new-stake,
            conviction-start: block-height,
            last-update: block-height,
            current-conviction: new-stake,
            vote-direction: support
        })
        (update-proposal-conviction proposal-id new-stake support true)
        (ok true)))

;; Calculate current conviction based on time elapsed
(define-read-only (calculate-current-conviction (vote-data {initial-stake: uint, conviction-start: uint, last-update: uint, current-conviction: uint, vote-direction: bool}))
    (let ((time-elapsed (- block-height (get conviction-start vote-data)))
          (periods-elapsed (/ time-elapsed u144))) ;; Assuming 144 blocks per period (24 hours)
        ;; Conviction grows exponentially: initial_stake * (growth_rate ^ periods)
        (* (get initial-stake vote-data) (pow CONVICTION-GROWTH-RATE periods-elapsed))))

;; Update proposal conviction totals
(define-private (update-proposal-conviction (proposal-id uint) (conviction-amount uint) (support bool) (add bool))
    (let ((current-conviction (default-to {total-support-conviction: u0, total-oppose-conviction: u0, conviction-threshold: u1000000, last-conviction-update: block-height}
                                         (map-get? proposal-conviction {proposal-id: proposal-id}))))
        (if support
            ;; Update support conviction
            (map-set proposal-conviction {proposal-id: proposal-id} (merge current-conviction {
                total-support-conviction: (if add 
                                            (+ (get total-support-conviction current-conviction) conviction-amount)
                                            (- (get total-support-conviction current-conviction) conviction-amount)),
                last-conviction-update: block-height
            }))
            ;; Update oppose conviction
            (map-set proposal-conviction {proposal-id: proposal-id} (merge current-conviction {
                total-oppose-conviction: (if add 
                                           (+ (get total-oppose-conviction current-conviction) conviction-amount)
                                           (- (get total-oppose-conviction current-conviction) conviction-amount)),
                last-conviction-update: block-height
            })))
        (ok true)))

;; Check if proposal can be executed based on conviction
(define-read-only (can-execute-proposal (proposal-id uint))
    (match (map-get? proposal-conviction {proposal-id: proposal-id})
        conviction-data
        (let ((support-conviction (get total-support-conviction conviction-data))
              (oppose-conviction (get total-oppose-conviction conviction-data))
              (threshold (get conviction-threshold conviction-data)))
            {
                can-execute: (and (>= support-conviction threshold) (> support-conviction oppose-conviction)),
                support-conviction: support-conviction,
                oppose-conviction: oppose-conviction,
                threshold: threshold,
                conviction-ratio: (if (> oppose-conviction u0) (/ support-conviction oppose-conviction) u0)
            })
        {can-execute: false, support-conviction: u0, oppose-conviction: u0, threshold: u0, conviction-ratio: u0}))

;; Refresh all conviction votes for a proposal (updates time-based growth)
(define-public (refresh-proposal-conviction (proposal-id uint))
    (let ((conviction-data (unwrap! (map-get? proposal-conviction {proposal-id: proposal-id}) (err ERR-PROPOSAL-NOT-FOUND))))
        ;; In a real implementation, this would iterate through all voters
        ;; and update their conviction based on time elapsed
        (record-conviction-snapshot proposal-id)
        (ok true)))

;; Record conviction snapshot for historical tracking
(define-private (record-conviction-snapshot (proposal-id uint))
    (match (map-get? proposal-conviction {proposal-id: proposal-id})
        conviction-data
        (map-set conviction-history {proposal-id: proposal-id, block: block-height} {
            support-conviction: (get total-support-conviction conviction-data),
            oppose-conviction: (get total-oppose-conviction conviction-data),
            total-voters: u0 ;; Would be calculated from actual voter count
        })
        false)
    (ok true))

;; Get conviction voting power for a specific voter
(define-read-only (get-voter-conviction-power (proposal-id uint) (voter principal))
    (match (map-get? conviction-votes {proposal-id: proposal-id, voter: voter})
        vote-data
        (some (calculate-current-conviction vote-data))
        none))

;; Calculate required conviction threshold based on proposal impact
(define-read-only (calculate-conviction-threshold (proposal-impact uint) (total-token-supply uint))
    ;; Higher impact proposals require more conviction
    ;; Threshold = base_threshold * impact_multiplier
    (let ((base-threshold (/ total-token-supply u100)) ;; 1% of total supply
          (impact-multiplier (if (> proposal-impact u3) u5 u2))) ;; 5x for high impact, 2x for low impact
        (* base-threshold impact-multiplier)))

;; Power function implementation (simplified)
(define-read-only (pow (base uint) (exponent uint))
    (if (is-eq exponent u0)
        u1
        (if (is-eq exponent u1)
            base
            (* base (pow base (- exponent u1))))))
