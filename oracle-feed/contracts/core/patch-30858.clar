;; fix concurrency issue in collection-manager
(define-public (patch-30858 (input uint))
  (begin
    (asserts! (> input u0) (err u30858))
    (ok input)))
