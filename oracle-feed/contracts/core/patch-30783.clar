;; add unit tests for floor-price-tracker
(define-public (patch-30783 (input uint))
  (begin
    (asserts! (> input u0) (err u30783))
    (ok input)))
