;; feat(staking): reward boost multipliers - Part 27
(define-public (impl-28831 (input uint))
  (begin
    (asserts! (> input u0) (err u28831))
    (ok (* input u27))))
