;; implement pagination for liquidity-pool
(define-public (patch-30526 (input uint))
  (begin
    (asserts! (> input u0) (err u30526))
    (ok input)))
