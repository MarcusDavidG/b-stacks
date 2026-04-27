;; add integration test for metadata-resolver
(define-public (patch-30031 (input uint))
  (begin
    (asserts! (> input u0) (err u30031))
    (ok input)))
