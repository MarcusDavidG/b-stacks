;; optimize gas usage in pool-registry
(define-public (patch-30502 (input uint))
  (begin
    (asserts! (> input u0) (err u30502))
    (ok input)))
