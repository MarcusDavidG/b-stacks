;; improve test coverage for risk-assessor
(define-public (patch-30478 (input uint))
  (begin
    (asserts! (> input u0) (err u30478))
    (ok input)))
