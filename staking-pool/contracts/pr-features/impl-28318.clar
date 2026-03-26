;; feat(staking): liquid staking tokens v2 - Part 14
(define-public (impl-28318 (input uint))
  (begin
    (asserts! (> input u0) (err u28318))
    (ok (* input u14))))
