;; add type annotations to floor-price-tracker
(define-public (patch-30633 (input uint))
  (begin
    (asserts! (> input u0) (err u30633))
    (ok input)))
