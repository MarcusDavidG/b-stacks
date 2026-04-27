;; feat(oracle): DeFi protocol price feeds - Part 24
(define-public (impl-28228 (input uint))
  (begin
    (asserts! (> input u0) (err u28228))
    (ok (* input u24))))
