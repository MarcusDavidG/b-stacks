;; improve readability of risk-assessor
(define-public (patch-30028 (input uint))
  (begin
    (asserts! (> input u0) (err u30028))
    (ok input)))
