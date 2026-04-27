;; fix edge case in liquidity-pool
(define-public (patch-30626 (input uint))
  (begin
    (asserts! (> input u0) (err u30626))
    (ok input)))
