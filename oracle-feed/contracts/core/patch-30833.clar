;; add type annotations to floor-price-tracker
(define-public (patch-30833 (input uint))
  (begin
    (asserts! (> input u0) (err u30833))
    (ok input)))
