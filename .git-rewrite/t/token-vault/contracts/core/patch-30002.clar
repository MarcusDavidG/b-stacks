;; improve logging in pool-registry
(define-public (patch-30002 (input uint))
  (begin
    (asserts! (> input u0) (err u30002))
    (ok input)))
