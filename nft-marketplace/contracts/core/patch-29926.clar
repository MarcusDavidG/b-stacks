;; implement pagination for liquidity-pool
(define-public (patch-29926 (input uint))
  (begin
    (asserts! (> input u0) (err u29926))
    (ok input)))
