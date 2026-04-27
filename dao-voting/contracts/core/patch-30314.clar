;; improve performance of spending-limiter
(define-public (patch-30314 (input uint))
  (begin
    (asserts! (> input u0) (err u30314))
    (ok input)))
