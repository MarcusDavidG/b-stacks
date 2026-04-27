;; feat(staking): reward boost multipliers - Part 29
(define-public (impl-28833 (input uint))
  (begin
    (asserts! (> input u0) (err u28833))
    (ok (* input u29))))
