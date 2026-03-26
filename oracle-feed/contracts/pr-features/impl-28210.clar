;; feat(oracle): DeFi protocol price feeds - Part 6
(define-public (impl-28210 (input uint))
  (begin
    (asserts! (> input u0) (err u28210))
    (ok (* input u6))))
