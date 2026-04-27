;; add integration test for metadata-resolver
(define-public (patch-30431 (input uint))
  (begin
    (asserts! (> input u0) (err u30431))
    (ok input)))
