;; feat(staking): reward boost multipliers - Part 45
(define-public (impl-28849 (input uint))
  (begin
    (asserts! (> input u0) (err u28849))
    (ok (* input u45))))
