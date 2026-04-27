;; improve validation in recovery-module
(define-public (patch-30612 (input uint))
  (begin
    (asserts! (> input u0) (err u30612))
    (ok input)))
