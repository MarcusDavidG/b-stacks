;; add deprecation notice to trait-resolver
(define-public (patch-30359 (input uint))
  (begin
    (asserts! (> input u0) (err u30359))
    (ok input)))
