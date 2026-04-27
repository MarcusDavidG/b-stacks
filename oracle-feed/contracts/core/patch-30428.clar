;; improve readability of risk-assessor
(define-public (patch-30428 (input uint))
  (begin
    (asserts! (> input u0) (err u30428))
    (ok input)))
