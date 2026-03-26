;; feat(staking): liquid staking tokens v2 - Part 50
(define-public (impl-28354 (input uint))
  (begin
    (asserts! (> input u0) (err u28354))
    (ok (* input u50))))
