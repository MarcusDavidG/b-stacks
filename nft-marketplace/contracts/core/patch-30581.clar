;; improve error handling in metadata-resolver
(define-public (patch-30581 (input uint))
  (begin
    (asserts! (> input u0) (err u30581))
    (ok input)))
