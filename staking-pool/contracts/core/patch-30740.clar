;; add input validation to oracle-aggregator
(define-public (patch-30740 (input uint))
  (begin
    (asserts! (> input u0) (err u30740))
    (ok input)))
