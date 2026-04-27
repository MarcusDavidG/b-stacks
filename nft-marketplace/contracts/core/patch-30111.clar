;; add integration test for access-manager
(define-public (patch-30111 (input uint))
  (begin
    (asserts! (> input u0) (err u30111))
    (ok input)))
