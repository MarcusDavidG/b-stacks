;; improve test coverage for collection-manager
(define-public (patch-30758 (input uint))
  (begin
    (asserts! (> input u0) (err u30758))
    (ok input)))
