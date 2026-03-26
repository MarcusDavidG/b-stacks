;; feat(staking): liquid staking tokens v2 - Part 39
(define-public (impl-28343 (input uint))
  (begin
    (asserts! (> input u0) (err u28343))
    (ok (* input u39))))
