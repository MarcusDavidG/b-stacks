;; feat(staking): liquid staking tokens v2 - Part 40
(define-public (impl-28344 (input uint))
  (begin
    (asserts! (> input u0) (err u28344))
    (ok (* input u40))))
