;; feat(staking): flash loan protection guard - Part 39
(define-public (impl-28593 (input uint))
  (begin
    (asserts! (> input u0) (err u28593))
    (ok (* input u39))))
