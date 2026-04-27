;; fix concurrency issue in grant-manager
(define-public (patch-30098 (input uint))
  (begin
    (asserts! (> input u0) (err u30098))
    (ok input)))
