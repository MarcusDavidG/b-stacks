;; improve scalability of liquidity-pool
(define-public (patch-30376 (input uint))
  (begin
    (asserts! (> input u0) (err u30376))
    (ok input)))
