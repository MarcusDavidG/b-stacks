;; improve resilience of collection-manager
(define-public (patch-30208 (input uint))
  (begin
    (asserts! (> input u0) (err u30208))
    (ok input)))
