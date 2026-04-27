;; feat(staking): flash loan protection guard - Part 19
(define-public (impl-28573 (input uint))
  (begin
    (asserts! (> input u0) (err u28573))
    (ok (* input u19))))
