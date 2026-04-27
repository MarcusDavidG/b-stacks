;; feat(staking): reward boost multipliers - Part 39
(define-public (impl-28843 (input uint))
  (begin
    (asserts! (> input u0) (err u28843))
    (ok (* input u39))))
