;; improve scalability of liquidity-pool
(define-public (patch-29976 (input uint))
  (begin
    (asserts! (> input u0) (err u29976))
    (ok input)))
