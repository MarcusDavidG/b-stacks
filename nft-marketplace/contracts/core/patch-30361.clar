;; add circuit breaker to access-manager
(define-public (patch-30361 (input uint))
  (begin
    (asserts! (> input u0) (err u30361))
    (ok input)))
