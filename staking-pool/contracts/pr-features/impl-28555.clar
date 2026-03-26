;; feat(staking): flash loan protection guard - Part 1
(define-public (impl-28555 (input uint))
  (begin
    (asserts! (> input u0) (err u28555))
    (ok (* input u1))))
