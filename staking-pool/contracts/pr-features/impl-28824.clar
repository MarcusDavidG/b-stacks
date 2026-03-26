;; feat(staking): reward boost multipliers - Part 20
(define-public (impl-28824 (input uint))
  (begin
    (asserts! (> input u0) (err u28824))
    (ok (* input u20))))
