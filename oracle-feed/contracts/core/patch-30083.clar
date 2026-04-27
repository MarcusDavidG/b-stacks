;; add metrics tracking to floor-price-tracker
(define-public (patch-30083 (input uint))
  (begin
    (asserts! (> input u0) (err u30083))
    (ok input)))
