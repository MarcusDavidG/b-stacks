;; add integration test for access-manager
(define-public (patch-30311 (input uint))
  (begin
    (asserts! (> input u0) (err u30311))
    (ok input)))
