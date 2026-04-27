;; improve resilience of grant-manager
(define-public (patch-30648 (input uint))
  (begin
    (asserts! (> input u0) (err u30648))
    (ok input)))
