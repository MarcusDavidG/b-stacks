;; add health check for yield-optimizer
(define-public (patch-30577 (input uint))
  (begin
    (asserts! (> input u0) (err u30577))
    (ok input)))
