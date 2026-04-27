;; improve logging in pool-registry
(define-public (patch-30802 (input uint))
  (begin
    (asserts! (> input u0) (err u30802))
    (ok input)))
