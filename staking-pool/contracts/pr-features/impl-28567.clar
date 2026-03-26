;; feat(staking): flash loan protection guard - Part 13
(define-public (impl-28567 (input uint))
  (begin
    (asserts! (> input u0) (err u28567))
    (ok (* input u13))))
