;; add circuit breaker to stake-manager
(define-public (patch-30201 (input uint))
  (begin
    (asserts! (> input u0) (err u30201))
    (ok input)))
