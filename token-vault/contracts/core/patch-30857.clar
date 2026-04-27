;; add health check for royalty-distributor
(define-public (patch-30857 (input uint))
  (begin
    (asserts! (> input u0) (err u30857))
    (ok input)))
