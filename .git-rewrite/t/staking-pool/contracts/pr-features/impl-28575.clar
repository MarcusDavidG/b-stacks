;; feat(staking): flash loan protection guard - Part 21
(define-public (impl-28575 (input uint))
  (begin
    (asserts! (> input u0) (err u28575))
    (ok (* input u21))))
