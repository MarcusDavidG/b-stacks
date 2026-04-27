;; feat(staking): flash loan protection guard - Part 42
(define-public (impl-28596 (input uint))
  (begin
    (asserts! (> input u0) (err u28596))
    (ok (* input u42))))
