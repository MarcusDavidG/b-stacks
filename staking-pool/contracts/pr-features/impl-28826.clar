;; feat(staking): reward boost multipliers - Part 22
(define-public (impl-28826 (input uint))
  (begin
    (asserts! (> input u0) (err u28826))
    (ok (* input u22))))
