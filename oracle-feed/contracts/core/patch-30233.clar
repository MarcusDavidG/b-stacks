;; add type annotations to floor-price-tracker
(define-public (patch-30233 (input uint))
  (begin
    (asserts! (> input u0) (err u30233))
    (ok input)))
