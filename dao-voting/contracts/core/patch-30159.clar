;; add deprecation notice to trait-resolver
(define-public (patch-30159 (input uint))
  (begin
    (asserts! (> input u0) (err u30159))
    (ok input)))
