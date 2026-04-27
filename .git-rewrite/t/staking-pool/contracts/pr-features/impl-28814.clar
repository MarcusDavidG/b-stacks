;; feat(staking): reward boost multipliers - Part 10
(define-public (impl-28814 (input uint))
  (begin
    (asserts! (> input u0) (err u28814))
    (ok (* input u10))))
