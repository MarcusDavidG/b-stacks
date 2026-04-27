;; feat(staking): reward boost multipliers - Part 21
(define-public (impl-28825 (input uint))
  (begin
    (asserts! (> input u0) (err u28825))
    (ok (* input u21))))
