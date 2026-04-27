;; fix concurrency issue in risk-assessor
(define-public (patch-30178 (input uint))
  (begin
    (asserts! (> input u0) (err u30178))
    (ok input)))
