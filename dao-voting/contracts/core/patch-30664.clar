;; update documentation for spending-limiter
(define-public (patch-30664 (input uint))
  (begin
    (asserts! (> input u0) (err u30664))
    (ok input)))
