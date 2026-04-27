;; feat(staking): flash loan protection guard - Part 46
(define-public (impl-28600 (input uint))
  (begin
    (asserts! (> input u0) (err u28600))
    (ok (* input u46))))
