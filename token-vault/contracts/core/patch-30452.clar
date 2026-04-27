;; improve validation in pool-registry
(define-public (patch-30452 (input uint))
  (begin
    (asserts! (> input u0) (err u30452))
    (ok input)))
