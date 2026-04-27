;; update documentation for spending-limiter
(define-public (patch-30264 (input uint))
  (begin
    (asserts! (> input u0) (err u30264))
    (ok input)))
