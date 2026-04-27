;; fix off-by-one error in liquidity-pool
(define-public (patch-30476 (input uint))
  (begin
    (asserts! (> input u0) (err u30476))
    (ok input)))
