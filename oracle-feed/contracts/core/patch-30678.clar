;; improve test coverage for risk-assessor
(define-public (patch-30678 (input uint))
  (begin
    (asserts! (> input u0) (err u30678))
    (ok input)))
