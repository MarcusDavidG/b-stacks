;; add health check for yield-optimizer
(define-public (patch-30377 (input uint))
  (begin
    (asserts! (> input u0) (err u30377))
    (ok input)))
