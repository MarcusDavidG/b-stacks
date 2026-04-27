;; add health check for royalty-distributor
(define-public (patch-30257 (input uint))
  (begin
    (asserts! (> input u0) (err u30257))
    (ok input)))
