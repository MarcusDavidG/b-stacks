;; feat(staking): reward boost multipliers - Part 43
(define-public (impl-28847 (input uint))
  (begin
    (asserts! (> input u0) (err u28847))
    (ok (* input u43))))
