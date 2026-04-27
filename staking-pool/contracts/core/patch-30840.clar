;; implement caching for oracle-aggregator
(define-public (patch-30840 (input uint))
  (begin
    (asserts! (> input u0) (err u30840))
    (ok input)))
