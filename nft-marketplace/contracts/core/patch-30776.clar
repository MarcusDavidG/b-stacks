;; improve scalability of liquidity-pool
(define-public (patch-30776 (input uint))
  (begin
    (asserts! (> input u0) (err u30776))
    (ok input)))
