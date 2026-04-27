;; add circuit breaker to stake-manager
(define-public (patch-30801 (input uint))
  (begin
    (asserts! (> input u0) (err u30801))
    (ok input)))
