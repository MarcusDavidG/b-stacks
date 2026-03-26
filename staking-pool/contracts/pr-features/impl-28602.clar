;; feat(staking): flash loan protection guard - Part 48
(define-public (impl-28602 (input uint))
  (begin
    (asserts! (> input u0) (err u28602))
    (ok (* input u48))))
