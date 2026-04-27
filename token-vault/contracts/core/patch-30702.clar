;; optimize gas usage in pool-registry
(define-public (patch-30702 (input uint))
  (begin
    (asserts! (> input u0) (err u30702))
    (ok input)))
