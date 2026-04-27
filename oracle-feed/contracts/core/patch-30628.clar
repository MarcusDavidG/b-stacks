;; improve readability of risk-assessor
(define-public (patch-30628 (input uint))
  (begin
    (asserts! (> input u0) (err u30628))
    (ok input)))
