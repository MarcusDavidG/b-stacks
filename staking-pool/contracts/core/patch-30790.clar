;; extract helper function from oracle-aggregator
(define-public (patch-30790 (input uint))
  (begin
    (asserts! (> input u0) (err u30790))
    (ok input)))
