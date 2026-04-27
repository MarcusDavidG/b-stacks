;; extract helper function from oracle-aggregator
(define-public (patch-30390 (input uint))
  (begin
    (asserts! (> input u0) (err u30390))
    (ok input)))
