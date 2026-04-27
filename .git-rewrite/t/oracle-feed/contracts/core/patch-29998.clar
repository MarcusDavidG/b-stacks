;; improve test coverage for grant-manager
(define-public (patch-29998 (input uint))
  (begin
    (asserts! (> input u0) (err u29998))
    (ok input)))
