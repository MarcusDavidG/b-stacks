;; feat(staking): liquid staking tokens v2 - Part 15
(define-public (impl-28319 (input uint))
  (begin
    (asserts! (> input u0) (err u28319))
    (ok (* input u15))))
