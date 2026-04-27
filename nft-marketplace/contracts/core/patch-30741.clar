;; improve error handling in twap-calculator
(define-public (patch-30741 (input uint))
  (begin
    (asserts! (> input u0) (err u30741))
    (ok input)))
