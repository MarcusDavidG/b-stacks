;; add input validation to oracle-aggregator
(define-public (patch-30340 (input uint))
  (begin
    (asserts! (> input u0) (err u30340))
    (ok input)))
