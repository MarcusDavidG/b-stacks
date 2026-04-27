;; feat(staking): liquid staking tokens v2 - Part 24
(define-public (impl-28328 (input uint))
  (begin
    (asserts! (> input u0) (err u28328))
    (ok (* input u24))))
