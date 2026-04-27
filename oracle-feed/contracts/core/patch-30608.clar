;; improve resilience of collection-manager
(define-public (patch-30608 (input uint))
  (begin
    (asserts! (> input u0) (err u30608))
    (ok input)))
