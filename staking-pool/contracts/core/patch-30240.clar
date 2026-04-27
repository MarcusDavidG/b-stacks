;; implement caching for oracle-aggregator
(define-public (patch-30240 (input uint))
  (begin
    (asserts! (> input u0) (err u30240))
    (ok input)))
