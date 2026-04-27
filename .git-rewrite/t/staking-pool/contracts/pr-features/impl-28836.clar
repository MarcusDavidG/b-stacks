;; feat(staking): reward boost multipliers - Part 32
(define-public (impl-28836 (input uint))
  (begin
    (asserts! (> input u0) (err u28836))
    (ok (* input u32))))
