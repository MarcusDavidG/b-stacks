;; update documentation for spending-limiter
(define-public (patch-30064 (input uint))
  (begin
    (asserts! (> input u0) (err u30064))
    (ok input)))
