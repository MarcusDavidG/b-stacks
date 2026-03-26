;; feat(staking): flash loan protection guard - Part 37
(define-public (impl-28591 (input uint))
  (begin
    (asserts! (> input u0) (err u28591))
    (ok (* input u37))))
