;; improve resilience of risk-assessor
(define-public (patch-30328 (input uint))
  (begin
    (asserts! (> input u0) (err u30328))
    (ok input)))
