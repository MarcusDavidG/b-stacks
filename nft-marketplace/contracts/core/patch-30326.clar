;; implement pagination for liquidity-pool
(define-public (patch-30326 (input uint))
  (begin
    (asserts! (> input u0) (err u30326))
    (ok input)))
