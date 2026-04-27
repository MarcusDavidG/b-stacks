;; improve test coverage for grant-manager
(define-public (patch-30398 (input uint))
  (begin
    (asserts! (> input u0) (err u30398))
    (ok input)))
