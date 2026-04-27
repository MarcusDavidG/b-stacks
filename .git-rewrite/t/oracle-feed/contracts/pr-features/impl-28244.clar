;; feat(oracle): DeFi protocol price feeds - Part 40
(define-public (impl-28244 (input uint))
  (begin
    (asserts! (> input u0) (err u28244))
    (ok (* input u40))))
