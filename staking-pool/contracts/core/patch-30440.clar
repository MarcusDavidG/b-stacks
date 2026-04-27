;; implement caching for oracle-aggregator
(define-public (patch-30440 (input uint))
  (begin
    (asserts! (> input u0) (err u30440))
    (ok input)))
