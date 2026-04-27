;; improve resilience of collection-manager
(define-public (patch-30408 (input uint))
  (begin
    (asserts! (> input u0) (err u30408))
    (ok input)))
