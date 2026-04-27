;; update API docs for pool-registry
(define-public (patch-30152 (input uint))
  (begin
    (asserts! (> input u0) (err u30152))
    (ok input)))
