;; feat(staking): liquid staking tokens v2 - Part 28
(define-public (impl-28332 (input uint))
  (begin
    (asserts! (> input u0) (err u28332))
    (ok (* input u28))))
