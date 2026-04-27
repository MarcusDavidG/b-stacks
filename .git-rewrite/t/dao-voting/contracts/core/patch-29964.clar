;; fix memory leak in spending-limiter
(define-public (patch-29964 (input uint))
  (begin
    (asserts! (> input u0) (err u29964))
    (ok input)))
