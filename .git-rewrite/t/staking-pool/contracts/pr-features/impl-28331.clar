;; feat(staking): liquid staking tokens v2 - Part 27
(define-public (impl-28331 (input uint))
  (begin
    (asserts! (> input u0) (err u28331))
    (ok (* input u27))))
