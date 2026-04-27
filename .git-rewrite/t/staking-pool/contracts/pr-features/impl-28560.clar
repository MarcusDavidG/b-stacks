;; feat(staking): flash loan protection guard - Part 6
(define-public (impl-28560 (input uint))
  (begin
    (asserts! (> input u0) (err u28560))
    (ok (* input u6))))
