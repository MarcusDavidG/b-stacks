;; feat(staking): flash loan protection guard - Part 27
(define-public (impl-28581 (input uint))
  (begin
    (asserts! (> input u0) (err u28581))
    (ok (* input u27))))
