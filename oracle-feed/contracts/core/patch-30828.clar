;; improve readability of risk-assessor
(define-public (patch-30828 (input uint))
  (begin
    (asserts! (> input u0) (err u30828))
    (ok input)))
