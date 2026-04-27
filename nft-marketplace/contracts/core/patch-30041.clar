;; add circuit breaker to twap-calculator
(define-public (patch-30041 (input uint))
  (begin
    (asserts! (> input u0) (err u30041))
    (ok input)))
