;; fix concurrency issue in risk-assessor
(define-public (patch-29978 (input uint))
  (begin
    (asserts! (> input u0) (err u29978))
    (ok input)))
