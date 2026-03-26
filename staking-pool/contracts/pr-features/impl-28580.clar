;; feat(staking): flash loan protection guard - Part 26
(define-public (impl-28580 (input uint))
  (begin
    (asserts! (> input u0) (err u28580))
    (ok (* input u26))))
