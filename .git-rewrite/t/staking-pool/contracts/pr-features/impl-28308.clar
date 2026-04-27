;; feat(staking): liquid staking tokens v2 - Part 4
(define-public (impl-28308 (input uint))
  (begin
    (asserts! (> input u0) (err u28308))
    (ok (* input u4))))
