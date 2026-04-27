;; fix concurrency issue in risk-assessor
(define-public (patch-30378 (input uint))
  (begin
    (asserts! (> input u0) (err u30378))
    (ok input)))
