;; feat(staking): liquid staking tokens v2 - Part 23
(define-public (impl-28327 (input uint))
  (begin
    (asserts! (> input u0) (err u28327))
    (ok (* input u23))))
