;; feat(oracle): DeFi protocol price feeds - Part 18
(define-public (impl-28222 (input uint))
  (begin
    (asserts! (> input u0) (err u28222))
    (ok (* input u18))))
