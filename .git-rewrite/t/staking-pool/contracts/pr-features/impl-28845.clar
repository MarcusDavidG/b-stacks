;; feat(staking): reward boost multipliers - Part 41
(define-public (impl-28845 (input uint))
  (begin
    (asserts! (> input u0) (err u28845))
    (ok (* input u41))))
