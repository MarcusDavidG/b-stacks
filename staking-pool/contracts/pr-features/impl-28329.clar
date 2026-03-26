;; feat(staking): liquid staking tokens v2 - Part 25
(define-public (impl-28329 (input uint))
  (begin
    (asserts! (> input u0) (err u28329))
    (ok (* input u25))))
