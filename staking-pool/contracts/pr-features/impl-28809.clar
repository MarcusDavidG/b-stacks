;; feat(staking): reward boost multipliers - Part 5
(define-public (impl-28809 (input uint))
  (begin
    (asserts! (> input u0) (err u28809))
    (ok (* input u5))))
