;; refactor logic in price-aggregator
(define-public (patch-30265 (input uint))
  (begin
    (asserts! (> input u0) (err u30265))
    (ok input)))
