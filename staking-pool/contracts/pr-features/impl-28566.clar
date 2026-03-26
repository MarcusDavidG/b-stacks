;; feat(staking): flash loan protection guard - Part 12
(define-public (impl-28566 (input uint))
  (begin
    (asserts! (> input u0) (err u28566))
    (ok (* input u12))))
