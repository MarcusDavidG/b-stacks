;; feat(staking): flash loan protection guard - Part 2
(define-public (impl-28556 (input uint))
  (begin
    (asserts! (> input u0) (err u28556))
    (ok (* input u2))))
