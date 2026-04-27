;; refactor logic in price-aggregator
(define-public (patch-30465 (input uint))
  (begin
    (asserts! (> input u0) (err u30465))
    (ok input)))
