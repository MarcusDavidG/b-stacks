;; improve validation in recovery-module
(define-public (patch-30412 (input uint))
  (begin
    (asserts! (> input u0) (err u30412))
    (ok input)))
