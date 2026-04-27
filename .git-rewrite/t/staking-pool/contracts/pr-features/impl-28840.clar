;; feat(staking): reward boost multipliers - Part 36
(define-public (impl-28840 (input uint))
  (begin
    (asserts! (> input u0) (err u28840))
    (ok (* input u36))))
