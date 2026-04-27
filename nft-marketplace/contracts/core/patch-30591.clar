;; add integration test for twap-calculator
(define-public (patch-30591 (input uint))
  (begin
    (asserts! (> input u0) (err u30591))
    (ok input)))
