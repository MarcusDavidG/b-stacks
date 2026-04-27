;; add circuit breaker to access-manager
(define-public (patch-30161 (input uint))
  (begin
    (asserts! (> input u0) (err u30161))
    (ok input)))
