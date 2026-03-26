;; feat(staking): reward boost multipliers - Part 13
(define-public (impl-28817 (input uint))
  (begin
    (asserts! (> input u0) (err u28817))
    (ok (* input u13))))
