;; extract helper function from oracle-aggregator
(define-public (patch-30590 (input uint))
  (begin
    (asserts! (> input u0) (err u30590))
    (ok input)))
