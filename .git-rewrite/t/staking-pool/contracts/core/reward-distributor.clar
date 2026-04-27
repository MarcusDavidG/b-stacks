;; Reward Distribution Contract
(define-constant ERR-NO-REWARDS (err u405))
(define-constant ERR-TOO-EARLY (err u406))
(define-constant BLOCKS-PER-DAY u144)

(define-map pending-rewards principal uint)
(define-map last-claim-block principal uint)

(define-public (claim-rewards)
  (let* ((caller tx-sender)
         (last-claim (default-to u0 (map-get? last-claim-block caller)))
         (blocks-elapsed (- block-height last-claim))
         (reward (calculate-reward caller blocks-elapsed)))
    (asserts! (> blocks-elapsed BLOCKS-PER-DAY) ERR-TOO-EARLY)
    (asserts! (> reward u0) ERR-NO-REWARDS)
    (map-set last-claim-block caller block-height)
    (try! (as-contract (stx-transfer? reward tx-sender caller)))
    (ok reward)))

(define-read-only (calculate-reward (user principal) (blocks uint))
  (let ((stake-info (contract-call? .staking-v2 get-stake-info user)))
    (match stake-info
      info (let ((tier-multiplier (+ u1 (get tier info))))
             (/ (* (get amount info) blocks tier-multiplier) u1000000))
      u0)))

(define-read-only (get-pending-reward (user principal))
  (let ((last-claim (default-to u0 (map-get? last-claim-block user)))
        (blocks-elapsed (- block-height last-claim)))
    (calculate-reward user blocks-elapsed)))
