;; add circuit breaker to metadata-resolver
(define-public (patch-30281 (input uint))
  (begin
    (asserts! (> input u0) (err u30281))
    (ok input)))
