;; refactor logic in price-aggregator
(define-public (patch-30065 (input uint))
  (begin
    (asserts! (> input u0) (err u30065))
    (ok input)))
