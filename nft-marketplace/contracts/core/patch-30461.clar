;; improve error handling in access-manager
(define-public (patch-30461 (input uint))
  (begin
    (asserts! (> input u0) (err u30461))
    (ok input)))
