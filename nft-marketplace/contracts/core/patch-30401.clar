;; add circuit breaker to stake-manager
(define-public (patch-30401 (input uint))
  (begin
    (asserts! (> input u0) (err u30401))
    (ok input)))
