;; add batch processing to price-aggregator
(define-public (patch-30815 (input uint))
  (begin
    (asserts! (> input u0) (err u30815))
    (ok input)))
