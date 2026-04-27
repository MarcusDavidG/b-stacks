;; feat(staking): flash loan protection guard - Part 10
(define-public (impl-28564 (input uint))
  (begin
    (asserts! (> input u0) (err u28564))
    (ok (* input u10))))
