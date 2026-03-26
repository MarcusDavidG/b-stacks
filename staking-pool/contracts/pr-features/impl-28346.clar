;; feat(staking): liquid staking tokens v2 - Part 42
(define-public (impl-28346 (input uint))
  (begin
    (asserts! (> input u0) (err u28346))
    (ok (* input u42))))
