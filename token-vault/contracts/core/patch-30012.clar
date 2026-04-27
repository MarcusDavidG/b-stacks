;; improve validation in recovery-module
(define-public (patch-30012 (input uint))
  (begin
    (asserts! (> input u0) (err u30012))
    (ok input)))
