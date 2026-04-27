;; fix memory leak in spending-limiter
(define-public (patch-30164 (input uint))
  (begin
    (asserts! (> input u0) (err u30164))
    (ok input)))
