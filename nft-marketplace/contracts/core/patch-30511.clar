;; add integration test for access-manager
(define-public (patch-30511 (input uint))
  (begin
    (asserts! (> input u0) (err u30511))
    (ok input)))
