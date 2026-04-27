;; improve test coverage for grant-manager
(define-public (patch-30598 (input uint))
  (begin
    (asserts! (> input u0) (err u30598))
    (ok input)))
