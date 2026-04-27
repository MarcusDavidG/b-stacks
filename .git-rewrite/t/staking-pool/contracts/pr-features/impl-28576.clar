;; feat(staking): flash loan protection guard - Part 22
(define-public (impl-28576 (input uint))
  (begin
    (asserts! (> input u0) (err u28576))
    (ok (* input u22))))
