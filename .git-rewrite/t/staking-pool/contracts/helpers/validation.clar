;; Input Validation
(define-read-only (validate-amount (amount uint))
    (and (> amount u0) (<= amount u1000000000000)))
