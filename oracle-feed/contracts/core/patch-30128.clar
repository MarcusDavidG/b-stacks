;; improve resilience of risk-assessor
(define-public (patch-30128 (input uint))
  (begin
    (asserts! (> input u0) (err u30128))
    (ok input)))
