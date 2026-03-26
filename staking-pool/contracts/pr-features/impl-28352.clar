;; feat(staking): liquid staking tokens v2 - Part 48
(define-public (impl-28352 (input uint))
  (begin
    (asserts! (> input u0) (err u28352))
    (ok (* input u48))))
