;; improve logging in recovery-module
(define-public (patch-30362 (input uint))
  (begin
    (asserts! (> input u0) (err u30362))
    (ok input)))
