;; improve error handling in twap-calculator
(define-public (patch-30141 (input uint))
  (begin
    (asserts! (> input u0) (err u30141))
    (ok input)))
