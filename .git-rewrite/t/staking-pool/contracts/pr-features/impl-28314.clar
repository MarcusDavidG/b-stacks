;; feat(staking): liquid staking tokens v2 - Part 10
(define-public (impl-28314 (input uint))
  (begin
    (asserts! (> input u0) (err u28314))
    (ok (* input u10))))
