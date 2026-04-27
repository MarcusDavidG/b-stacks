;; feat(staking): liquid staking tokens v2 - Part 20
(define-public (impl-28324 (input uint))
  (begin
    (asserts! (> input u0) (err u28324))
    (ok (* input u20))))
