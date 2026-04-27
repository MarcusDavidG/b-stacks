;; add health check for royalty-distributor
(define-public (patch-30657 (input uint))
  (begin
    (asserts! (> input u0) (err u30657))
    (ok input)))
