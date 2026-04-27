;; add circuit breaker to access-manager
(define-public (patch-30561 (input uint))
  (begin
    (asserts! (> input u0) (err u30561))
    (ok input)))
