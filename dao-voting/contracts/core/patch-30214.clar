;; fix precision error in spending-limiter
(define-public (patch-30214 (input uint))
  (begin
    (asserts! (> input u0) (err u30214))
    (ok input)))
