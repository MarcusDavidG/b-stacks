;; add integration test for twap-calculator
(define-public (patch-30391 (input uint))
  (begin
    (asserts! (> input u0) (err u30391))
    (ok input)))
