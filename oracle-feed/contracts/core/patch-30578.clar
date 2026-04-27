;; fix concurrency issue in risk-assessor
(define-public (patch-30578 (input uint))
  (begin
    (asserts! (> input u0) (err u30578))
    (ok input)))
