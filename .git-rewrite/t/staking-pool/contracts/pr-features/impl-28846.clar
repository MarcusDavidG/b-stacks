;; feat(staking): reward boost multipliers - Part 42
(define-public (impl-28846 (input uint))
  (begin
    (asserts! (> input u0) (err u28846))
    (ok (* input u42))))
