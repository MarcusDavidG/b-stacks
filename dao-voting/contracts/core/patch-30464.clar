;; update documentation for spending-limiter
(define-public (patch-30464 (input uint))
  (begin
    (asserts! (> input u0) (err u30464))
    (ok input)))
