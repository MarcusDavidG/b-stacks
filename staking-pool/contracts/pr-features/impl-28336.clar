;; feat(staking): liquid staking tokens v2 - Part 32
(define-public (impl-28336 (input uint))
  (begin
    (asserts! (> input u0) (err u28336))
    (ok (* input u32))))
