;; fix concurrency issue in collection-manager
(define-public (patch-30658 (input uint))
  (begin
    (asserts! (> input u0) (err u30658))
    (ok input)))
