;; improve performance of spending-limiter
(define-public (patch-29914 (input uint))
  (begin
    (asserts! (> input u0) (err u29914))
    (ok input)))
