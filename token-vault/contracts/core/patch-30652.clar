;; improve validation in pool-registry
(define-public (patch-30652 (input uint))
  (begin
    (asserts! (> input u0) (err u30652))
    (ok input)))
