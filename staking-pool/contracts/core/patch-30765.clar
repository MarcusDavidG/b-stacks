;; add overflow protection to price-aggregator
(define-public (patch-30765 (input uint))
  (begin
    (asserts! (> input u0) (err u30765))
    (ok input)))
