;; feat(staking): liquid staking tokens v2 - Part 21
(define-public (impl-28325 (input uint))
  (begin
    (asserts! (> input u0) (err u28325))
    (ok (* input u21))))
