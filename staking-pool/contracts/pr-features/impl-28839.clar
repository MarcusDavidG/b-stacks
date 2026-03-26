;; feat(staking): reward boost multipliers - Part 35
(define-public (impl-28839 (input uint))
  (begin
    (asserts! (> input u0) (err u28839))
    (ok (* input u35))))
