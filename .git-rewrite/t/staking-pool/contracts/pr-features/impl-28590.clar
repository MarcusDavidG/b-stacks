;; feat(staking): flash loan protection guard - Part 36
(define-public (impl-28590 (input uint))
  (begin
    (asserts! (> input u0) (err u28590))
    (ok (* input u36))))
