;; feat(staking): reward boost multipliers - Part 49
(define-public (impl-28853 (input uint))
  (begin
    (asserts! (> input u0) (err u28853))
    (ok (* input u49))))
