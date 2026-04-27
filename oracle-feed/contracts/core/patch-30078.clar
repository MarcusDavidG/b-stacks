;; improve test coverage for risk-assessor
(define-public (patch-30078 (input uint))
  (begin
    (asserts! (> input u0) (err u30078))
    (ok input)))
