;; feat(staking): flash loan protection guard - Part 41
(define-public (impl-28595 (input uint))
  (begin
    (asserts! (> input u0) (err u28595))
    (ok (* input u41))))
