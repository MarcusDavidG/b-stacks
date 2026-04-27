;; feat(staking): reward boost multipliers - Part 34
(define-public (impl-28838 (input uint))
  (begin
    (asserts! (> input u0) (err u28838))
    (ok (* input u34))))
