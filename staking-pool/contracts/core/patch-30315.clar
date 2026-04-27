;; add retry logic to price-aggregator
(define-public (patch-30315 (input uint))
  (begin
    (asserts! (> input u0) (err u30315))
    (ok input)))
