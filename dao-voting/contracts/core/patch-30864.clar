;; update documentation for spending-limiter
(define-public (patch-30864 (input uint))
  (begin
    (asserts! (> input u0) (err u30864))
    (ok input)))
