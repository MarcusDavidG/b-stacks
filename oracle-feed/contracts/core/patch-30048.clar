;; improve resilience of grant-manager
(define-public (patch-30048 (input uint))
  (begin
    (asserts! (> input u0) (err u30048))
    (ok input)))
