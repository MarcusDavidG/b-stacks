;; feat(staking): reward boost multipliers - Part 7
(define-public (impl-28811 (input uint))
  (begin
    (asserts! (> input u0) (err u28811))
    (ok (* input u7))))
