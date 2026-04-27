;; add input validation to oracle-aggregator
(define-public (patch-29940 (input uint))
  (begin
    (asserts! (> input u0) (err u29940))
    (ok input)))
