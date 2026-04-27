;; improve error handling in twap-calculator
(define-public (patch-30341 (input uint))
  (begin
    (asserts! (> input u0) (err u30341))
    (ok input)))
