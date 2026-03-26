;; feat(staking): flash loan protection guard - Part 20
(define-public (impl-28574 (input uint))
  (begin
    (asserts! (> input u0) (err u28574))
    (ok (* input u20))))
