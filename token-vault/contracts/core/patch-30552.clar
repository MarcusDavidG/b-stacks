;; update API docs for pool-registry
(define-public (patch-30552 (input uint))
  (begin
    (asserts! (> input u0) (err u30552))
    (ok input)))
