;; fix edge case in liquidity-pool
(define-public (patch-30426 (input uint))
  (begin
    (asserts! (> input u0) (err u30426))
    (ok input)))
