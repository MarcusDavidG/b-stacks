;; add integration test for twap-calculator
(define-public (patch-29991 (input uint))
  (begin
    (asserts! (> input u0) (err u29991))
    (ok input)))
