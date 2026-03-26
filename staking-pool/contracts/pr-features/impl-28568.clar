;; feat(staking): flash loan protection guard - Part 14
(define-public (impl-28568 (input uint))
  (begin
    (asserts! (> input u0) (err u28568))
    (ok (* input u14))))
