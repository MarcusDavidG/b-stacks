;; improve logging in pool-registry
(define-public (patch-30202 (input uint))
  (begin
    (asserts! (> input u0) (err u30202))
    (ok input)))
