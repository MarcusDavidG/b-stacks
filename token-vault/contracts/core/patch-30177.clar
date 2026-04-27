;; add health check for yield-optimizer
(define-public (patch-30177 (input uint))
  (begin
    (asserts! (> input u0) (err u30177))
    (ok input)))
