;; feat(staking): flash loan protection guard - Part 32
(define-public (impl-28586 (input uint))
  (begin
    (asserts! (> input u0) (err u28586))
    (ok (* input u32))))
