;; feat(staking): reward boost multipliers - Part 37
(define-public (impl-28841 (input uint))
  (begin
    (asserts! (> input u0) (err u28841))
    (ok (* input u37))))
