;; fix concurrency issue in grant-manager
(define-public (patch-30898 (input uint))
  (begin
    (asserts! (> input u0) (err u30898))
    (ok input)))
