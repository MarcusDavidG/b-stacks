;; feat(staking): liquid staking tokens v2 - Part 16
(define-public (impl-28320 (input uint))
  (begin
    (asserts! (> input u0) (err u28320))
    (ok (* input u16))))
