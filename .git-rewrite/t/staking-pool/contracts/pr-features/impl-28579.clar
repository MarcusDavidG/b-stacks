;; feat(staking): flash loan protection guard - Part 25
(define-public (impl-28579 (input uint))
  (begin
    (asserts! (> input u0) (err u28579))
    (ok (* input u25))))
