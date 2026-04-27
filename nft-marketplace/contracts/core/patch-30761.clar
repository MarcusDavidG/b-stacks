;; add circuit breaker to access-manager
(define-public (patch-30761 (input uint))
  (begin
    (asserts! (> input u0) (err u30761))
    (ok input)))
