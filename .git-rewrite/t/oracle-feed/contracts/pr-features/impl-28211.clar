;; feat(oracle): DeFi protocol price feeds - Part 7
(define-public (impl-28211 (input uint))
  (begin
    (asserts! (> input u0) (err u28211))
    (ok (* input u7))))
