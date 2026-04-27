;; add circuit breaker to stake-manager
(define-public (patch-30601 (input uint))
  (begin
    (asserts! (> input u0) (err u30601))
    (ok input)))
