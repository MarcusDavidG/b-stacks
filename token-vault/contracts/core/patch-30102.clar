;; optimize gas usage in pool-registry
(define-public (patch-30102 (input uint))
  (begin
    (asserts! (> input u0) (err u30102))
    (ok input)))
