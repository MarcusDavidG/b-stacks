;; improve error handling in metadata-resolver
(define-public (patch-30781 (input uint))
  (begin
    (asserts! (> input u0) (err u30781))
    (ok input)))
