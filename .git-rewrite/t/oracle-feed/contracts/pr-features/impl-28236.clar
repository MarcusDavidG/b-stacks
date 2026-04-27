;; feat(oracle): DeFi protocol price feeds - Part 32
(define-public (impl-28236 (input uint))
  (begin
    (asserts! (> input u0) (err u28236))
    (ok (* input u32))))
