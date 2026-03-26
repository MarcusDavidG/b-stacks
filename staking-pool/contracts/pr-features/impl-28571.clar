;; feat(staking): flash loan protection guard - Part 17
(define-public (impl-28571 (input uint))
  (begin
    (asserts! (> input u0) (err u28571))
    (ok (* input u17))))
