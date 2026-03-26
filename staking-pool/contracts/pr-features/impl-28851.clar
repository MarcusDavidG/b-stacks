;; feat(staking): reward boost multipliers - Part 47
(define-public (impl-28851 (input uint))
  (begin
    (asserts! (> input u0) (err u28851))
    (ok (* input u47))))
