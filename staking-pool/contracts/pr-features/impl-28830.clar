;; feat(staking): reward boost multipliers - Part 26
(define-public (impl-28830 (input uint))
  (begin
    (asserts! (> input u0) (err u28830))
    (ok (* input u26))))
