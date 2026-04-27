;; improve error handling in metadata-resolver
(define-public (patch-29981 (input uint))
  (begin
    (asserts! (> input u0) (err u29981))
    (ok input)))
