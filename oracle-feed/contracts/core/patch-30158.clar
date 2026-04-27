;; improve test coverage for collection-manager
(define-public (patch-30158 (input uint))
  (begin
    (asserts! (> input u0) (err u30158))
    (ok input)))
