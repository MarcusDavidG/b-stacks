;; add type annotations to compliance-engine
(define-public (patch-30513 (input uint))
  (begin
    (asserts! (> input u0) (err u30513))
    (ok input)))
