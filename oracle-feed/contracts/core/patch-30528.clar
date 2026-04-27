;; improve resilience of risk-assessor
(define-public (patch-30528 (input uint))
  (begin
    (asserts! (> input u0) (err u30528))
    (ok input)))
