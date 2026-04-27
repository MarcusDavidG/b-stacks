;; improve test coverage for collection-manager
(define-public (patch-30558 (input uint))
  (begin
    (asserts! (> input u0) (err u30558))
    (ok input)))
