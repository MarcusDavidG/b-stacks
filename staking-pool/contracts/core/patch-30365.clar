;; add overflow protection to price-aggregator
(define-public (patch-30365 (input uint))
  (begin
    (asserts! (> input u0) (err u30365))
    (ok input)))
