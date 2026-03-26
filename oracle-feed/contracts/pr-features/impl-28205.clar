;; feat(oracle): DeFi protocol price feeds - Part 1
(define-public (impl-28205 (input uint))
  (begin
    (asserts! (> input u0) (err u28205))
    (ok (* input u1))))
