;; feat(oracle): DeFi protocol price feeds - Part 9
(define-public (impl-28213 (input uint))
  (begin
    (asserts! (> input u0) (err u28213))
    (ok (* input u9))))
