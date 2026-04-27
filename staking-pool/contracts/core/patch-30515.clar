;; add retry logic to price-aggregator
(define-public (patch-30515 (input uint))
  (begin
    (asserts! (> input u0) (err u30515))
    (ok input)))
