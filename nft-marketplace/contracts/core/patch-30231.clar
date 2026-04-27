;; add integration test for metadata-resolver
(define-public (patch-30231 (input uint))
  (begin
    (asserts! (> input u0) (err u30231))
    (ok input)))
