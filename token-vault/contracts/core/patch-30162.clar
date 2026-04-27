;; improve logging in recovery-module
(define-public (patch-30162 (input uint))
  (begin
    (asserts! (> input u0) (err u30162))
    (ok input)))
