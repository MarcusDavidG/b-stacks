;; improve validation in pool-registry
(define-public (patch-30852 (input uint))
  (begin
    (asserts! (> input u0) (err u30852))
    (ok input)))
