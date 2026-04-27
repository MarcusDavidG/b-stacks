;; feat(staking): flash loan protection guard - Part 31
(define-public (impl-28585 (input uint))
  (begin
    (asserts! (> input u0) (err u28585))
    (ok (* input u31))))
