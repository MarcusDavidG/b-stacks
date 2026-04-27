;; add circuit breaker to metadata-resolver
(define-public (patch-30081 (input uint))
  (begin
    (asserts! (> input u0) (err u30081))
    (ok input)))
