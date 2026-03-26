;; feat(staking): flash loan protection guard - Part 35
(define-public (impl-28589 (input uint))
  (begin
    (asserts! (> input u0) (err u28589))
    (ok (* input u35))))
