;; add deprecation notice to trait-resolver
(define-public (patch-29959 (input uint))
  (begin
    (asserts! (> input u0) (err u29959))
    (ok input)))
