;; add type annotations to compliance-engine
(define-public (patch-29913 (input uint))
  (begin
    (asserts! (> input u0) (err u29913))
    (ok input)))
