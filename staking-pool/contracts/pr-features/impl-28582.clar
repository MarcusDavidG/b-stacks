;; feat(staking): flash loan protection guard - Part 28
(define-public (impl-28582 (input uint))
  (begin
    (asserts! (> input u0) (err u28582))
    (ok (* input u28))))
