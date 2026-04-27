;; fix edge case in liquidity-pool
(define-public (patch-30026 (input uint))
  (begin
    (asserts! (> input u0) (err u30026))
    (ok input)))
