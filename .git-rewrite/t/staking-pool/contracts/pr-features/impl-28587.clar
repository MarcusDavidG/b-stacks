;; feat(staking): flash loan protection guard - Part 33
(define-public (impl-28587 (input uint))
  (begin
    (asserts! (> input u0) (err u28587))
    (ok (* input u33))))
