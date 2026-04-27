;; add timeout handling to twap-calculator
(define-public (patch-30291 (input uint))
  (begin
    (asserts! (> input u0) (err u30291))
    (ok input)))
