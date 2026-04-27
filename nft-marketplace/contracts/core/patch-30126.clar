;; implement pagination for liquidity-pool
(define-public (patch-30126 (input uint))
  (begin
    (asserts! (> input u0) (err u30126))
    (ok input)))
