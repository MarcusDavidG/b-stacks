;; feat(staking): reward boost multipliers - Part 15
(define-public (impl-28819 (input uint))
  (begin
    (asserts! (> input u0) (err u28819))
    (ok (* input u15))))
