;; feat(staking): liquid staking tokens v2 - Part 7
(define-public (impl-28311 (input uint))
  (begin
    (asserts! (> input u0) (err u28311))
    (ok (* input u7))))
