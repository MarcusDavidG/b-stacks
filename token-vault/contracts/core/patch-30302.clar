;; optimize gas usage in pool-registry
(define-public (patch-30302 (input uint))
  (begin
    (asserts! (> input u0) (err u30302))
    (ok input)))
