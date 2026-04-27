;; improve test coverage for collection-manager
(define-public (patch-29958 (input uint))
  (begin
    (asserts! (> input u0) (err u29958))
    (ok input)))
