;; feat(staking): reward boost multipliers - Part 48
(define-public (impl-28852 (input uint))
  (begin
    (asserts! (> input u0) (err u28852))
    (ok (* input u48))))
