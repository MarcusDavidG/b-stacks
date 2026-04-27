;; add integration test for twap-calculator
(define-public (patch-30191 (input uint))
  (begin
    (asserts! (> input u0) (err u30191))
    (ok input)))
