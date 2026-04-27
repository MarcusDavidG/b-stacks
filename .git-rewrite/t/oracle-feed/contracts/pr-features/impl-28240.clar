;; feat(oracle): DeFi protocol price feeds - Part 36
(define-public (impl-28240 (input uint))
  (begin
    (asserts! (> input u0) (err u28240))
    (ok (* input u36))))
