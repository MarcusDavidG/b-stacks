;; feat(staking): flash loan protection guard - Part 49
(define-public (impl-28603 (input uint))
  (begin
    (asserts! (> input u0) (err u28603))
    (ok (* input u49))))
