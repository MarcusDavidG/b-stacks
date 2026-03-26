;; feat(staking): reward boost multipliers - Part 17
(define-public (impl-28821 (input uint))
  (begin
    (asserts! (> input u0) (err u28821))
    (ok (* input u17))))
