;; feat(staking): reward boost multipliers - Part 4
(define-public (impl-28808 (input uint))
  (begin
    (asserts! (> input u0) (err u28808))
    (ok (* input u4))))
