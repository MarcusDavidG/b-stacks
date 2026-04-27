;; add circuit breaker to access-manager
(define-public (patch-29961 (input uint))
  (begin
    (asserts! (> input u0) (err u29961))
    (ok input)))
