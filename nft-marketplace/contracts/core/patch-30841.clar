;; add circuit breaker to twap-calculator
(define-public (patch-30841 (input uint))
  (begin
    (asserts! (> input u0) (err u30841))
    (ok input)))
