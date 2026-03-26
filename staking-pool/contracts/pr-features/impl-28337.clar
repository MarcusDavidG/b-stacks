;; feat(staking): liquid staking tokens v2 - Part 33
(define-public (impl-28337 (input uint))
  (begin
    (asserts! (> input u0) (err u28337))
    (ok (* input u33))))
