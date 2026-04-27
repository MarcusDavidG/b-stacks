;; improve resilience of risk-assessor
(define-public (patch-30728 (input uint))
  (begin
    (asserts! (> input u0) (err u30728))
    (ok input)))
