;; feat(staking): flash loan protection guard - Part 44
(define-public (impl-28598 (input uint))
  (begin
    (asserts! (> input u0) (err u28598))
    (ok (* input u44))))
