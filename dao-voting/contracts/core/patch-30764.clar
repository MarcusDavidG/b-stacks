;; fix memory leak in spending-limiter
(define-public (patch-30764 (input uint))
  (begin
    (asserts! (> input u0) (err u30764))
    (ok input)))
