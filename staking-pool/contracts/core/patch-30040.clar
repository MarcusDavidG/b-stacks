;; implement caching for oracle-aggregator
(define-public (patch-30040 (input uint))
  (begin
    (asserts! (> input u0) (err u30040))
    (ok input)))
