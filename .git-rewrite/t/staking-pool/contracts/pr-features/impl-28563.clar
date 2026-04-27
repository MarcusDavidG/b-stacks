;; feat(staking): flash loan protection guard - Part 9
(define-public (impl-28563 (input uint))
  (begin
    (asserts! (> input u0) (err u28563))
    (ok (* input u9))))
