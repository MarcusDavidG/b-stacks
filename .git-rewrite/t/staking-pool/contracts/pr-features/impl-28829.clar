;; feat(staking): reward boost multipliers - Part 25
(define-public (impl-28829 (input uint))
  (begin
    (asserts! (> input u0) (err u28829))
    (ok (* input u25))))
