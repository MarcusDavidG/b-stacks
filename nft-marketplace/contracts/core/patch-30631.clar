;; add integration test for metadata-resolver
(define-public (patch-30631 (input uint))
  (begin
    (asserts! (> input u0) (err u30631))
    (ok input)))
