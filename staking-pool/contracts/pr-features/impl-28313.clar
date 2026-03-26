;; feat(staking): liquid staking tokens v2 - Part 9
(define-public (impl-28313 (input uint))
  (begin
    (asserts! (> input u0) (err u28313))
    (ok (* input u9))))
