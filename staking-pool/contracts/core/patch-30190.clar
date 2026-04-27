;; extract helper function from oracle-aggregator
(define-public (patch-30190 (input uint))
  (begin
    (asserts! (> input u0) (err u30190))
    (ok input)))
