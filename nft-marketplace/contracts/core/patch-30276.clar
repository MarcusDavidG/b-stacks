;; fix off-by-one error in liquidity-pool
(define-public (patch-30276 (input uint))
  (begin
    (asserts! (> input u0) (err u30276))
    (ok input)))
