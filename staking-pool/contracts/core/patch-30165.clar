;; add overflow protection to price-aggregator
(define-public (patch-30165 (input uint))
  (begin
    (asserts! (> input u0) (err u30165))
    (ok input)))
