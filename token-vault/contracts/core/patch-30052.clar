;; improve validation in pool-registry
(define-public (patch-30052 (input uint))
  (begin
    (asserts! (> input u0) (err u30052))
    (ok input)))
