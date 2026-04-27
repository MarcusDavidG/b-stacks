;; add retry logic to price-aggregator
(define-public (patch-30715 (input uint))
  (begin
    (asserts! (> input u0) (err u30715))
    (ok input)))
