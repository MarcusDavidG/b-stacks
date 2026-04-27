;; fix concurrency issue in collection-manager
(define-public (patch-30458 (input uint))
  (begin
    (asserts! (> input u0) (err u30458))
    (ok input)))
