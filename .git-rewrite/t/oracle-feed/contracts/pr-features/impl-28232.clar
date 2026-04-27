;; feat(oracle): DeFi protocol price feeds - Part 28
(define-public (impl-28232 (input uint))
  (begin
    (asserts! (> input u0) (err u28232))
    (ok (* input u28))))
