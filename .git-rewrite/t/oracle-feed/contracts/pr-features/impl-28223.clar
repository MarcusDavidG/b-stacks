;; feat(oracle): DeFi protocol price feeds - Part 19
(define-public (impl-28223 (input uint))
  (begin
    (asserts! (> input u0) (err u28223))
    (ok (* input u19))))
