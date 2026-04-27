;; add circuit breaker to stake-manager
(define-public (patch-30001 (input uint))
  (begin
    (asserts! (> input u0) (err u30001))
    (ok input)))
