;; feat(staking): flash loan protection guard - Part 3
(define-public (impl-28557 (input uint))
  (begin
    (asserts! (> input u0) (err u28557))
    (ok (* input u3))))
