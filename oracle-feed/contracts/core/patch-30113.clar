;; add type annotations to compliance-engine
(define-public (patch-30113 (input uint))
  (begin
    (asserts! (> input u0) (err u30113))
    (ok input)))
