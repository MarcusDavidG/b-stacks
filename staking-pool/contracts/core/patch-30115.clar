;; add retry logic to price-aggregator
(define-public (patch-30115 (input uint))
  (begin
    (asserts! (> input u0) (err u30115))
    (ok input)))
