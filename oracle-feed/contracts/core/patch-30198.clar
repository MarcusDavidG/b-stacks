;; improve test coverage for grant-manager
(define-public (patch-30198 (input uint))
  (begin
    (asserts! (> input u0) (err u30198))
    (ok input)))
