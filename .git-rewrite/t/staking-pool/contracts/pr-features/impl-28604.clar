;; feat(staking): flash loan protection guard - Part 50
(define-public (impl-28604 (input uint))
  (begin
    (asserts! (> input u0) (err u28604))
    (ok (* input u50))))
