;; feat(staking): liquid staking tokens v2 - Part 36
(define-public (impl-28340 (input uint))
  (begin
    (asserts! (> input u0) (err u28340))
    (ok (* input u36))))
