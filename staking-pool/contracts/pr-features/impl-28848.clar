;; feat(staking): reward boost multipliers - Part 44
(define-public (impl-28848 (input uint))
  (begin
    (asserts! (> input u0) (err u28848))
    (ok (* input u44))))
