;; add circuit breaker to twap-calculator
(define-public (patch-30241 (input uint))
  (begin
    (asserts! (> input u0) (err u30241))
    (ok input)))
