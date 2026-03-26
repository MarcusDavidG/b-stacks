;; feat(staking): flash loan protection guard - Part 5
(define-public (impl-28559 (input uint))
  (begin
    (asserts! (> input u0) (err u28559))
    (ok (* input u5))))
