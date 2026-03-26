;; feat(oracle): DeFi protocol price feeds - Part 21
(define-public (impl-28225 (input uint))
  (begin
    (asserts! (> input u0) (err u28225))
    (ok (* input u21))))
