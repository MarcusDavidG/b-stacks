;; fix memory leak in spending-limiter
(define-public (patch-30364 (input uint))
  (begin
    (asserts! (> input u0) (err u30364))
    (ok input)))
