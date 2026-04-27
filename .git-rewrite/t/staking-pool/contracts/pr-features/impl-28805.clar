;; feat(staking): reward boost multipliers - Part 1
(define-public (impl-28805 (input uint))
  (begin
    (asserts! (> input u0) (err u28805))
    (ok (* input u1))))
