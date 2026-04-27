;; update API docs for pool-registry
(define-public (patch-29952 (input uint))
  (begin
    (asserts! (> input u0) (err u29952))
    (ok input)))
