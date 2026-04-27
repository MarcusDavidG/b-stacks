;; feat(staking): liquid staking tokens v2 - Part 31
(define-public (impl-28335 (input uint))
  (begin
    (asserts! (> input u0) (err u28335))
    (ok (* input u31))))
