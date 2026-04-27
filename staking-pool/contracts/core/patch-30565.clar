;; add overflow protection to price-aggregator
(define-public (patch-30565 (input uint))
  (begin
    (asserts! (> input u0) (err u30565))
    (ok input)))
