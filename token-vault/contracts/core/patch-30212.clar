;; improve validation in recovery-module
(define-public (patch-30212 (input uint))
  (begin
    (asserts! (> input u0) (err u30212))
    (ok input)))
