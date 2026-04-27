;; add batch processing to price-aggregator
(define-public (patch-30415 (input uint))
  (begin
    (asserts! (> input u0) (err u30415))
    (ok input)))
