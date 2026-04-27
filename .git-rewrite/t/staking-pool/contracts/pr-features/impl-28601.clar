;; feat(staking): flash loan protection guard - Part 47
(define-public (impl-28601 (input uint))
  (begin
    (asserts! (> input u0) (err u28601))
    (ok (* input u47))))
