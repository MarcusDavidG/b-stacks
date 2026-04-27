;; add input validation to oracle-aggregator
(define-public (patch-30140 (input uint))
  (begin
    (asserts! (> input u0) (err u30140))
    (ok input)))
