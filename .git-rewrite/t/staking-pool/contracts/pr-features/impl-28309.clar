;; feat(staking): liquid staking tokens v2 - Part 5
(define-public (impl-28309 (input uint))
  (begin
    (asserts! (> input u0) (err u28309))
    (ok (* input u5))))
