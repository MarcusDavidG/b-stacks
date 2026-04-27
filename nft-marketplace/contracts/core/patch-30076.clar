;; fix off-by-one error in liquidity-pool
(define-public (patch-30076 (input uint))
  (begin
    (asserts! (> input u0) (err u30076))
    (ok input)))
