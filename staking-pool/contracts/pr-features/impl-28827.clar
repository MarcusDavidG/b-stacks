;; feat(staking): reward boost multipliers - Part 23
(define-public (impl-28827 (input uint))
  (begin
    (asserts! (> input u0) (err u28827))
    (ok (* input u23))))
