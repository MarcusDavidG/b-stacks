;; improve resilience of grant-manager
(define-public (patch-30448 (input uint))
  (begin
    (asserts! (> input u0) (err u30448))
    (ok input)))
