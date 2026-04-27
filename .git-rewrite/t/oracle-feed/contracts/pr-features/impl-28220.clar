;; feat(oracle): DeFi protocol price feeds - Part 16
(define-public (impl-28220 (input uint))
  (begin
    (asserts! (> input u0) (err u28220))
    (ok (* input u16))))
