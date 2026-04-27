;; implement pagination for liquidity-pool
(define-public (patch-30726 (input uint))
  (begin
    (asserts! (> input u0) (err u30726))
    (ok input)))
