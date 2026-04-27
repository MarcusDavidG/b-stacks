;; update API docs for pool-registry
(define-public (patch-30752 (input uint))
  (begin
    (asserts! (> input u0) (err u30752))
    (ok input)))
