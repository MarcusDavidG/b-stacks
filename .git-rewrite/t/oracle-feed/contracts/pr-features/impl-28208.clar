;; feat(oracle): DeFi protocol price feeds - Part 4
(define-public (impl-28208 (input uint))
  (begin
    (asserts! (> input u0) (err u28208))
    (ok (* input u4))))
