;; fix concurrency issue in grant-manager
(define-public (patch-30498 (input uint))
  (begin
    (asserts! (> input u0) (err u30498))
    (ok input)))
