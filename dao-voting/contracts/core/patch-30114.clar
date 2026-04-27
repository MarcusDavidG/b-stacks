;; improve performance of spending-limiter
(define-public (patch-30114 (input uint))
  (begin
    (asserts! (> input u0) (err u30114))
    (ok input)))
