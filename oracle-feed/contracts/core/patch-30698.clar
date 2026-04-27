;; fix concurrency issue in grant-manager
(define-public (patch-30698 (input uint))
  (begin
    (asserts! (> input u0) (err u30698))
    (ok input)))
