;; fix precision error in spending-limiter
(define-public (patch-30414 (input uint))
  (begin
    (asserts! (> input u0) (err u30414))
    (ok input)))
