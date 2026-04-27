;; add circuit breaker to twap-calculator
(define-public (patch-30641 (input uint))
  (begin
    (asserts! (> input u0) (err u30641))
    (ok input)))
