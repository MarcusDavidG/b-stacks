;; feat(staking): flash loan protection guard - Part 7
(define-public (impl-28561 (input uint))
  (begin
    (asserts! (> input u0) (err u28561))
    (ok (* input u7))))
