;; fix precision error in spending-limiter
(define-public (patch-30014 (input uint))
  (begin
    (asserts! (> input u0) (err u30014))
    (ok input)))
