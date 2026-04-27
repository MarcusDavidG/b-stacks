;; improve error handling in metadata-resolver
(define-public (patch-30381 (input uint))
  (begin
    (asserts! (> input u0) (err u30381))
    (ok input)))
