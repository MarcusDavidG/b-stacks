;; improve logging in pool-registry
(define-public (patch-30602 (input uint))
  (begin
    (asserts! (> input u0) (err u30602))
    (ok input)))
