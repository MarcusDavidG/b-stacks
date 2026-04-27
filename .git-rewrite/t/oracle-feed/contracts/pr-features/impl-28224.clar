;; feat(oracle): DeFi protocol price feeds - Part 20
(define-public (impl-28224 (input uint))
  (begin
    (asserts! (> input u0) (err u28224))
    (ok (* input u20))))
