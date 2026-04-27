;; add circuit breaker to metadata-resolver
(define-public (patch-30481 (input uint))
  (begin
    (asserts! (> input u0) (err u30481))
    (ok input)))
