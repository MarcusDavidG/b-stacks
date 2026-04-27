;; feat(staking): flash loan protection guard - Part 23
(define-public (impl-28577 (input uint))
  (begin
    (asserts! (> input u0) (err u28577))
    (ok (* input u23))))
