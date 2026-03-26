;; feat(oracle): DeFi protocol price feeds - Part 14
(define-public (impl-28218 (input uint))
  (begin
    (asserts! (> input u0) (err u28218))
    (ok (* input u14))))
