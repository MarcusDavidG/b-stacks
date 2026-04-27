;; improve scalability of liquidity-pool
(define-public (patch-30576 (input uint))
  (begin
    (asserts! (> input u0) (err u30576))
    (ok input)))
