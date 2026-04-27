;; feat(staking): flash loan protection guard - Part 8
(define-public (impl-28562 (input uint))
  (begin
    (asserts! (> input u0) (err u28562))
    (ok (* input u8))))
