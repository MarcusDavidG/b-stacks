;; feat(staking): flash loan protection guard - Part 4
(define-public (impl-28558 (input uint))
  (begin
    (asserts! (> input u0) (err u28558))
    (ok (* input u4))))
