;; feat(oracle): DeFi protocol price feeds - Part 17
(define-public (impl-28221 (input uint))
  (begin
    (asserts! (> input u0) (err u28221))
    (ok (* input u17))))
