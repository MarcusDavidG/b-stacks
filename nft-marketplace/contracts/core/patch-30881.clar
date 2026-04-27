;; add circuit breaker to metadata-resolver
(define-public (patch-30881 (input uint))
  (begin
    (asserts! (> input u0) (err u30881))
    (ok input)))
