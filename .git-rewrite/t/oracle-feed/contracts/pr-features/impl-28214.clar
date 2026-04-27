;; feat(oracle): DeFi protocol price feeds - Part 10
(define-public (impl-28214 (input uint))
  (begin
    (asserts! (> input u0) (err u28214))
    (ok (* input u10))))
