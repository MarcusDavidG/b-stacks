;; feat(staking): liquid staking tokens v2 - Part 12
(define-public (impl-28316 (input uint))
  (begin
    (asserts! (> input u0) (err u28316))
    (ok (* input u12))))
