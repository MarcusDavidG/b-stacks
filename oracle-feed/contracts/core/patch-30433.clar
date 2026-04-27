;; add type annotations to floor-price-tracker
(define-public (patch-30433 (input uint))
  (begin
    (asserts! (> input u0) (err u30433))
    (ok input)))
