;; feat(staking): reward boost multipliers - Part 14
(define-public (impl-28818 (input uint))
  (begin
    (asserts! (> input u0) (err u28818))
    (ok (* input u14))))
