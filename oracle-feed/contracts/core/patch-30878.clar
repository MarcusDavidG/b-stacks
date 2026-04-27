;; improve test coverage for risk-assessor
(define-public (patch-30878 (input uint))
  (begin
    (asserts! (> input u0) (err u30878))
    (ok input)))
