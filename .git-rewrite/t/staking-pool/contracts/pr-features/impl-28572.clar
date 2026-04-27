;; feat(staking): flash loan protection guard - Part 18
(define-public (impl-28572 (input uint))
  (begin
    (asserts! (> input u0) (err u28572))
    (ok (* input u18))))
