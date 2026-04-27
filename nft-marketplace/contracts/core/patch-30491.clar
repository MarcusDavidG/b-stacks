;; add timeout handling to twap-calculator
(define-public (patch-30491 (input uint))
  (begin
    (asserts! (> input u0) (err u30491))
    (ok input)))
