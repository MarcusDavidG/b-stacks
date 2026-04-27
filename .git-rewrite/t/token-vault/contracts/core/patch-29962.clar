;; improve logging in recovery-module
(define-public (patch-29962 (input uint))
  (begin
    (asserts! (> input u0) (err u29962))
    (ok input)))
