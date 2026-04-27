;; improve test coverage for collection-manager
(define-public (patch-30358 (input uint))
  (begin
    (asserts! (> input u0) (err u30358))
    (ok input)))
