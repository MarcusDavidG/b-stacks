;; improve scalability of liquidity-pool
(define-public (patch-30176 (input uint))
  (begin
    (asserts! (> input u0) (err u30176))
    (ok input)))
