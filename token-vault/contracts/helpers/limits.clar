;; Spending Limits
(define-map daily-limits principal uint)
(define-public (set-daily-limit (limit uint))
    (ok (map-set daily-limits tx-sender limit)))
