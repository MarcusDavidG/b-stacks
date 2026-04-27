;; improve test coverage for grant-manager
(define-public (patch-30798 (input uint))
  (begin
    (asserts! (> input u0) (err u30798))
    (ok input)))
