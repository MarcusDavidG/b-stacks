;; fix precision error in spending-limiter
(define-public (patch-30814 (input uint))
  (begin
    (asserts! (> input u0) (err u30814))
    (ok input)))
