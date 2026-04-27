;; improve resilience of collection-manager
(define-public (patch-30808 (input uint))
  (begin
    (asserts! (> input u0) (err u30808))
    (ok input)))
