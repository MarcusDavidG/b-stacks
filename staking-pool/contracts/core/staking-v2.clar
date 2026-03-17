;; Staking Pool V2 - Enhanced staking with tiered rewards
(define-constant CONTRACT-OWNER tx-sender)
(define-constant ERR-NOT-AUTHORIZED (err u401))
(define-constant ERR-INSUFFICIENT-BALANCE (err u402))
(define-constant ERR-INVALID-AMOUNT (err u403))
(define-constant ERR-POOL-LOCKED (err u404))

(define-data-var total-staked uint u0)
(define-data-var reward-rate uint u100) ;; basis points
(define-data-var min-stake uint u1000000) ;; 1 STX

(define-map stakers principal
  { amount: uint, since: uint, tier: uint, rewards-claimed: uint })

(define-public (stake (amount uint))
  (let ((caller tx-sender)
        (current-balance (stx-get-balance caller)))
    (asserts! (>= amount (var-get min-stake)) ERR-INVALID-AMOUNT)
    (asserts! (>= current-balance amount) ERR-INSUFFICIENT-BALANCE)
    (try! (stx-transfer? amount caller (as-contract tx-sender)))
    (map-set stakers caller
      { amount: amount, since: block-height,
        tier: (calculate-tier amount), rewards-claimed: u0 })
    (var-set total-staked (+ (var-get total-staked) amount))
    (ok true)))

(define-public (unstake (amount uint))
  (let ((caller tx-sender)
        (stake-info (unwrap! (map-get? stakers caller) ERR-NOT-AUTHORIZED)))
    (asserts! (>= (get amount stake-info) amount) ERR-INSUFFICIENT-BALANCE)
    (try! (as-contract (stx-transfer? amount tx-sender caller)))
    (map-set stakers caller
      (merge stake-info { amount: (- (get amount stake-info) amount) }))
    (var-set total-staked (- (var-get total-staked) amount))
    (ok true)))

(define-read-only (calculate-tier (amount uint))
  (if (>= amount u100000000) u3
    (if (>= amount u10000000) u2
      (if (>= amount u1000000) u1 u0))))

(define-read-only (get-stake-info (user principal))
  (map-get? stakers user))

(define-read-only (get-total-staked)
  (var-get total-staked))
