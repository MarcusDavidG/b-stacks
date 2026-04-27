;; improve resilience of grant-manager
(define-public (patch-30248 (input uint))
  (begin
    (asserts! (> input u0) (err u30248))
    (ok input)))
