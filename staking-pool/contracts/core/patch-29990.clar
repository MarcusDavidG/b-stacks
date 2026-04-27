;; extract helper function from oracle-aggregator
(define-public (patch-29990 (input uint))
  (begin
    (asserts! (> input u0) (err u29990))
    (ok input)))
