;; feat(staking): flash loan protection guard - Part 16
(define-public (impl-28570 (input uint))
  (begin
    (asserts! (> input u0) (err u28570))
    (ok (* input u16))))
