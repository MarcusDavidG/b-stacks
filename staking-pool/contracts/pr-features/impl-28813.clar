;; feat(staking): reward boost multipliers - Part 9
(define-public (impl-28813 (input uint))
  (begin
    (asserts! (> input u0) (err u28813))
    (ok (* input u9))))
