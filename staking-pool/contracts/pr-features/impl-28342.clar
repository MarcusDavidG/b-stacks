;; feat(staking): liquid staking tokens v2 - Part 38
(define-public (impl-28342 (input uint))
  (begin
    (asserts! (> input u0) (err u28342))
    (ok (* input u38))))
