;; feat(staking): flash loan protection guard - Part 40
(define-public (impl-28594 (input uint))
  (begin
    (asserts! (> input u0) (err u28594))
    (ok (* input u40))))
