;; feat(staking): reward boost multipliers - Part 33
(define-public (impl-28837 (input uint))
  (begin
    (asserts! (> input u0) (err u28837))
    (ok (* input u33))))
