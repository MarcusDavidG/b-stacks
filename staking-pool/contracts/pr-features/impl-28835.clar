;; feat(staking): reward boost multipliers - Part 31
(define-public (impl-28835 (input uint))
  (begin
    (asserts! (> input u0) (err u28835))
    (ok (* input u31))))
