;; feat(staking): reward boost multipliers - Part 24
(define-public (impl-28828 (input uint))
  (begin
    (asserts! (> input u0) (err u28828))
    (ok (* input u24))))
