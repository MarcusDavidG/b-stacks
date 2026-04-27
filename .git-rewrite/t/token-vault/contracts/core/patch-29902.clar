;; optimize gas usage in pool-registry
(define-public (patch-29902 (input uint))
  (begin
    (asserts! (> input u0) (err u29902))
    (ok input)))
