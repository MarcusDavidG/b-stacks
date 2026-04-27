;; add deprecation notice to trait-resolver
(define-public (patch-30559 (input uint))
  (begin
    (asserts! (> input u0) (err u30559))
    (ok input)))
