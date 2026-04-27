;; improve error handling in twap-calculator
(define-public (patch-30541 (input uint))
  (begin
    (asserts! (> input u0) (err u30541))
    (ok input)))
