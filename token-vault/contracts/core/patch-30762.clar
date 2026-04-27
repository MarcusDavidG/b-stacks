;; improve logging in recovery-module
(define-public (patch-30762 (input uint))
  (begin
    (asserts! (> input u0) (err u30762))
    (ok input)))
