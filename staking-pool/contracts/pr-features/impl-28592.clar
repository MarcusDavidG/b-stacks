;; feat(staking): flash loan protection guard - Part 38
(define-public (impl-28592 (input uint))
  (begin
    (asserts! (> input u0) (err u28592))
    (ok (* input u38))))
