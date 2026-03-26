;; feat(staking): reward boost multipliers - Part 18
(define-public (impl-28822 (input uint))
  (begin
    (asserts! (> input u0) (err u28822))
    (ok (* input u18))))
