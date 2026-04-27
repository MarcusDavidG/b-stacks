;; add type annotations to compliance-engine
(define-public (patch-30313 (input uint))
  (begin
    (asserts! (> input u0) (err u30313))
    (ok input)))
