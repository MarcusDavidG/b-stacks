;; fix off-by-one error in liquidity-pool
(define-public (patch-30876 (input uint))
  (begin
    (asserts! (> input u0) (err u30876))
    (ok input)))
