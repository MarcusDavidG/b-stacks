;; refactor logic in price-aggregator
(define-public (patch-30665 (input uint))
  (begin
    (asserts! (> input u0) (err u30665))
    (ok input)))
