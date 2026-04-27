;; add timeout handling to twap-calculator
(define-public (patch-30091 (input uint))
  (begin
    (asserts! (> input u0) (err u30091))
    (ok input)))
