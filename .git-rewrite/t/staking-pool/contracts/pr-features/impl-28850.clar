;; feat(staking): reward boost multipliers - Part 46
(define-public (impl-28850 (input uint))
  (begin
    (asserts! (> input u0) (err u28850))
    (ok (* input u46))))
