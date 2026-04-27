;; feat(staking): liquid staking tokens v2 - Part 8
(define-public (impl-28312 (input uint))
  (begin
    (asserts! (> input u0) (err u28312))
    (ok (* input u8))))
