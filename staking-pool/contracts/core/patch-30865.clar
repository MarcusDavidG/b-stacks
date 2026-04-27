;; refactor logic in price-aggregator
(define-public (patch-30865 (input uint))
  (begin
    (asserts! (> input u0) (err u30865))
    (ok input)))
