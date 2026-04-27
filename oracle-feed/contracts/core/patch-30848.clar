;; improve resilience of grant-manager
(define-public (patch-30848 (input uint))
  (begin
    (asserts! (> input u0) (err u30848))
    (ok input)))
