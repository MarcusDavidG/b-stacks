;; feat(oracle): DeFi protocol price feeds - Part 5
(define-public (impl-28209 (input uint))
  (begin
    (asserts! (> input u0) (err u28209))
    (ok (* input u5))))
