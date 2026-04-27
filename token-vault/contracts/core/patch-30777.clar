;; add health check for yield-optimizer
(define-public (patch-30777 (input uint))
  (begin
    (asserts! (> input u0) (err u30777))
    (ok input)))
