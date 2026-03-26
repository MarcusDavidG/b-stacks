;; feat(staking): reward boost multipliers - Part 6
(define-public (impl-28810 (input uint))
  (begin
    (asserts! (> input u0) (err u28810))
    (ok (* input u6))))
