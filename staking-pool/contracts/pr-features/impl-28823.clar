;; feat(staking): reward boost multipliers - Part 19
(define-public (impl-28823 (input uint))
  (begin
    (asserts! (> input u0) (err u28823))
    (ok (* input u19))))
