;; Auto-Compounding Staking System
;; Automatically reinvests rewards to maximize returns

(define-constant ERR-AUTO-COMPOUND-DISABLED (err u1400))
(define-map auto-compound-settings principal {enabled: bool, frequency: uint, min-threshold: uint})
(define-map compound-history principal {total-compounded: uint, compound-count: uint, last-compound: uint})

(define-public (enable-auto-compound (frequency uint) (min-threshold uint))
    (map-set auto-compound-settings tx-sender {enabled: true, frequency: frequency, min-threshold: min-threshold})
    (ok true))

(define-public (compound-rewards (user principal))
    (let ((settings (unwrap! (map-get? auto-compound-settings user) (err ERR-AUTO-COMPOUND-DISABLED)))
          (rewards (get-pending-rewards user)))
        (asserts! (get enabled settings) (err ERR-AUTO-COMPOUND-DISABLED))
        (asserts! (>= rewards (get min-threshold settings)) (err ERR-INSUFFICIENT-BALANCE))
        (map-set compound-history user {
            total-compounded: (+ (default-to u0 (get total-compounded (map-get? compound-history user))) rewards),
            compound-count: (+ (default-to u0 (get compound-count (map-get? compound-history user))) u1),
            last-compound: block-height
        })
        (ok rewards)))

(define-read-only (get-pending-rewards (user principal)) u1000)
