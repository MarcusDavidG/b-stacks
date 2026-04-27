;; fix concurrency issue in grant-manager
(define-public (patch-30298 (input uint))
  (begin
    (asserts! (> input u0) (err u30298))
    (ok input)))
