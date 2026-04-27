;; fix memory leak in spending-limiter
(define-public (patch-30564 (input uint))
  (begin
    (asserts! (> input u0) (err u30564))
    (ok input)))
