;; fix concurrency issue in collection-manager
(define-public (patch-30058 (input uint))
  (begin
    (asserts! (> input u0) (err u30058))
    (ok input)))
