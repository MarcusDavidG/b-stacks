;; feat(oracle): DeFi protocol price feeds - Part 8
(define-public (impl-28212 (input uint))
  (begin
    (asserts! (> input u0) (err u28212))
    (ok (* input u8))))
