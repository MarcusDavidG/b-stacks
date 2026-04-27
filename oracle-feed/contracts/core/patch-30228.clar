;; improve readability of risk-assessor
(define-public (patch-30228 (input uint))
  (begin
    (asserts! (> input u0) (err u30228))
    (ok input)))
