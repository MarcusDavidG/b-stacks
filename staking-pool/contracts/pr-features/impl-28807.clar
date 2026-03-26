;; feat(staking): reward boost multipliers - Part 3
(define-public (impl-28807 (input uint))
  (begin
    (asserts! (> input u0) (err u28807))
    (ok (* input u3))))
