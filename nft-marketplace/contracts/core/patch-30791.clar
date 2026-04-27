;; add integration test for twap-calculator
(define-public (patch-30791 (input uint))
  (begin
    (asserts! (> input u0) (err u30791))
    (ok input)))
