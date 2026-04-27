;; add batch processing to price-aggregator
(define-public (patch-30015 (input uint))
  (begin
    (asserts! (> input u0) (err u30015))
    (ok input)))
