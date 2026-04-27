;; add metrics tracking to floor-price-tracker
(define-public (patch-30883 (input uint))
  (begin
    (asserts! (> input u0) (err u30883))
    (ok input)))
