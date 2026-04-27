;; improve validation in pool-registry
(define-public (patch-30252 (input uint))
  (begin
    (asserts! (> input u0) (err u30252))
    (ok input)))
