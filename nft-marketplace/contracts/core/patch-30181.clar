;; improve error handling in metadata-resolver
(define-public (patch-30181 (input uint))
  (begin
    (asserts! (> input u0) (err u30181))
    (ok input)))
