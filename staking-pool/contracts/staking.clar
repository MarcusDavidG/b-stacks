;; Enhanced Staking Pool Contract v2.1
;; Supports multi-token staking, flexible lock periods, reward distribution, and reward claiming

;; =========================
;; Constants
;; =========================

(define-constant CONTRACT-OWNER tx-sender)
(define-constant ERR-NOT-AUTHORIZED (err u100))
(define-constant ERR-INSUFFICIENT-BALANCE (err u101))
(define-constant ERR-INVALID-AMOUNT (err u102))
(define-constant ERR-POOL-PAUSED (err u103))
(define-constant ERR-MINIMUM-STAKE (err u104))
(define-constant ERR-LOCK-NOT-EXPIRED (err u105))
(define-constant ERR-NO-REWARDS (err u106))
(define-constant ERR-TRANSFER-FAILED (err u107))

;; =========================
;; Data Variables
;; =========================

(define-data-var total-staked uint u0)
(define-data-var pool-paused bool false)
(define-data-var minimum-stake uint u1000000) ;; 1 STX minimum
(define-data-var reward-rate uint u500) ;; 5% annual rate (basis points)
(define-data-var pool-capacity uint u100000000000) ;; 100k STX max

;; =========================
;; Data Maps
;; =========================

(define-map stakes principal 
  { amount: uint, lock-period: uint, timestamp: uint, rewards-earned: uint })

(define-map pool-stats uint 
  { total-stakers: uint, total-rewards-paid: uint, pool-performance: uint })

(define-map delegations principal 
  { delegate: principal, amount: uint, commission-rate: uint })

(define-map validators principal 
  { total-delegated: uint, commission-rate: uint, active: bool, reputation: uint })

;; =========================
;; Delegation Functions
;; =========================

(define-public (delegate-stake (validator principal) (amount uint))
  (let (
        (current-stake 
          (default-to 
            { amount: u0, lock-period: u0, timestamp: u0, rewards-earned: u0 } 
            (map-get? stakes tx-sender)
          )
        )
      )
    (asserts! (>= (get amount current-stake) amount) ERR-INSUFFICIENT-BALANCE)

    (map-set delegations tx-sender {
      delegate: validator,
      amount: amount,
      commission-rate: (get-validator-commission validator)
    })

    (update-validator-stats validator amount)
    (ok true)
  )
)

(define-read-only (get-validator-commission (validator principal))
  (default-to u500 (get commission-rate (map-get? validators validator)))
)

(define-private (update-validator-stats (validator principal) (amount uint))
  (let (
        (current-stats 
          (default-to 
            { total-delegated: u0, commission-rate: u500, active: true, reputation: u100 }
            (map-get? validators validator)
          )
        )
      )
    (map-set validators validator 
      (merge current-stats {
        total-delegated: (+ (get total-delegated current-stats) amount)
      })
    )
    (ok true)
  )
)

;; =========================
;; NEW: Claim Rewards
;; =========================

(define-public (claim-rewards)
  (let (
        (stake-data (unwrap! (map-get? stakes tx-sender) ERR-INSUFFICIENT-BALANCE))
        (lock-end (+ (get timestamp stake-data) (get lock-period stake-data)))
        (rewards (get rewards-earned stake-data))
      )

    ;; Ensure lock period expired
    (asserts! (>= block-height lock-end) ERR-LOCK-NOT-EXPIRED)

    ;; Ensure rewards exist
    (asserts! (> rewards u0) ERR-NO-REWARDS)

    ;; Reset rewards BEFORE transfer (safe pattern)
    (map-set stakes tx-sender
      (merge stake-data { rewards-earned: u0 })
    )

    ;; Transfer rewards
    (match (as-contract (stx-transfer? rewards tx-sender tx-sender))
      success 
        (begin
          (print { event: "rewards-claimed", user: tx-sender, amount: rewards })
          (ok rewards)
        )
      error ERR-TRANSFER-FAILED
    )
  )
)
