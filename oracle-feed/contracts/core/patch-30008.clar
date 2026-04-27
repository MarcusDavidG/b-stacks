;; improve resilience of collection-manager
(define-public (patch-30008 (input uint))
  (begin
    (asserts! (> input u0) (err u30008))
    (ok input)))
