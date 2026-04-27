;; add batch processing to price-aggregator
(define-public (patch-30615 (input uint))
  (begin
    (asserts! (> input u0) (err u30615))
    (ok input)))
