;; feat(staking): reward boost multipliers - Part 2
(define-public (impl-28806 (input uint))
  (begin
    (asserts! (> input u0) (err u28806))
    (ok (* input u2))))
