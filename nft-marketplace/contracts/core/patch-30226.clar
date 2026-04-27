;; fix edge case in liquidity-pool
(define-public (patch-30226 (input uint))
  (begin
    (asserts! (> input u0) (err u30226))
    (ok input)))
