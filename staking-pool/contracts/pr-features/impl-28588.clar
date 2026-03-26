;; feat(staking): flash loan protection guard - Part 34
(define-public (impl-28588 (input uint))
  (begin
    (asserts! (> input u0) (err u28588))
    (ok (* input u34))))
