;; add timeout handling to twap-calculator
(define-public (patch-30891 (input uint))
  (begin
    (asserts! (> input u0) (err u30891))
    (ok input)))
