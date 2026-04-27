;; improve performance of spending-limiter
(define-public (patch-30514 (input uint))
  (begin
    (asserts! (> input u0) (err u30514))
    (ok input)))
