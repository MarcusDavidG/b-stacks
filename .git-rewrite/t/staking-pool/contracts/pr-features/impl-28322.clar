;; feat(staking): liquid staking tokens v2 - Part 18
(define-public (impl-28322 (input uint))
  (begin
    (asserts! (> input u0) (err u28322))
    (ok (* input u18))))
