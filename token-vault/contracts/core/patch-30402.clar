;; improve logging in pool-registry
(define-public (patch-30402 (input uint))
  (begin
    (asserts! (> input u0) (err u30402))
    (ok input)))
