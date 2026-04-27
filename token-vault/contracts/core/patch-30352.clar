;; update API docs for pool-registry
(define-public (patch-30352 (input uint))
  (begin
    (asserts! (> input u0) (err u30352))
    (ok input)))
