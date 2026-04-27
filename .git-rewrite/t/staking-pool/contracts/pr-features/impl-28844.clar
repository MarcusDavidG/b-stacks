;; feat(staking): reward boost multipliers - Part 40
(define-public (impl-28844 (input uint))
  (begin
    (asserts! (> input u0) (err u28844))
    (ok (* input u40))))
