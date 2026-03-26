;; feat(staking): flash loan protection guard - Part 29
(define-public (impl-28583 (input uint))
  (begin
    (asserts! (> input u0) (err u28583))
    (ok (* input u29))))
