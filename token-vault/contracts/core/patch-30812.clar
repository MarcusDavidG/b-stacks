;; improve validation in recovery-module
(define-public (patch-30812 (input uint))
  (begin
    (asserts! (> input u0) (err u30812))
    (ok input)))
