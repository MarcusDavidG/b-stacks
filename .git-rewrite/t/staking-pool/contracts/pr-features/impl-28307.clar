;; feat(staking): liquid staking tokens v2 - Part 3
(define-public (impl-28307 (input uint))
  (begin
    (asserts! (> input u0) (err u28307))
    (ok (* input u3))))
