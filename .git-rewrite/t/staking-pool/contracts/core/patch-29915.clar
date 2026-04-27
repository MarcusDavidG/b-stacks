;; add retry logic to price-aggregator
(define-public (patch-29915 (input uint))
  (begin
    (asserts! (> input u0) (err u29915))
    (ok input)))
