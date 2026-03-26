;; feat(staking): liquid staking tokens v2 - Part 6
(define-public (impl-28310 (input uint))
  (begin
    (asserts! (> input u0) (err u28310))
    (ok (* input u6))))
