;; fix off-by-one error in liquidity-pool
(define-public (patch-30676 (input uint))
  (begin
    (asserts! (> input u0) (err u30676))
    (ok input)))
