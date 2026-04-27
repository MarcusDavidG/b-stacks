;; add circuit breaker to metadata-resolver
(define-public (patch-30681 (input uint))
  (begin
    (asserts! (> input u0) (err u30681))
    (ok input)))
