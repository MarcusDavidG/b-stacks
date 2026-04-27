;; improve test coverage for risk-assessor
(define-public (patch-30278 (input uint))
  (begin
    (asserts! (> input u0) (err u30278))
    (ok input)))
