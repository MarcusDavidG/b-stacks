;; feat(staking): reward boost multipliers - Part 38
(define-public (impl-28842 (input uint))
  (begin
    (asserts! (> input u0) (err u28842))
    (ok (* input u38))))
