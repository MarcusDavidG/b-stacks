;; improve performance of spending-limiter
(define-public (patch-30714 (input uint))
  (begin
    (asserts! (> input u0) (err u30714))
    (ok input)))
