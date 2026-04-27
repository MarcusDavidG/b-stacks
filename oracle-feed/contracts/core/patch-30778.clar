;; fix concurrency issue in risk-assessor
(define-public (patch-30778 (input uint))
  (begin
    (asserts! (> input u0) (err u30778))
    (ok input)))
