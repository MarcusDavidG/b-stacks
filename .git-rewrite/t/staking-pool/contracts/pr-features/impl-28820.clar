;; feat(staking): reward boost multipliers - Part 16
(define-public (impl-28820 (input uint))
  (begin
    (asserts! (> input u0) (err u28820))
    (ok (* input u16))))
