;; add type annotations to floor-price-tracker
(define-public (patch-30033 (input uint))
  (begin
    (asserts! (> input u0) (err u30033))
    (ok input)))
