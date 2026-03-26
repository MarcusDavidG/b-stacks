;; feat(oracle): DeFi protocol price feeds - Part 3
(define-public (impl-28207 (input uint))
  (begin
    (asserts! (> input u0) (err u28207))
    (ok (* input u3))))
