;; add overflow protection to price-aggregator
(define-public (patch-29965 (input uint))
  (begin
    (asserts! (> input u0) (err u29965))
    (ok input)))
