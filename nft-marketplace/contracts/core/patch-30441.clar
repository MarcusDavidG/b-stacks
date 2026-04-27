;; add circuit breaker to twap-calculator
(define-public (patch-30441 (input uint))
  (begin
    (asserts! (> input u0) (err u30441))
    (ok input)))
