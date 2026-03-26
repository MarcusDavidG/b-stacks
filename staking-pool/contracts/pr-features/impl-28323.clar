;; feat(staking): liquid staking tokens v2 - Part 19
(define-public (impl-28323 (input uint))
  (begin
    (asserts! (> input u0) (err u28323))
    (ok (* input u19))))
