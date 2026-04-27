;; fix concurrency issue in collection-manager
(define-public (patch-30258 (input uint))
  (begin
    (asserts! (> input u0) (err u30258))
    (ok input)))
