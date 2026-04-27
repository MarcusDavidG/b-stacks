;; improve resilience of risk-assessor
(define-public (patch-29928 (input uint))
  (begin
    (asserts! (> input u0) (err u29928))
    (ok input)))
