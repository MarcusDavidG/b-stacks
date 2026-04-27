;; feat(oracle): DeFi protocol price feeds - Part 42
(define-public (impl-28246 (input uint))
  (begin
    (asserts! (> input u0) (err u28246))
    (ok (* input u42))))
