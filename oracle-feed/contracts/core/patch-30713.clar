;; add type annotations to compliance-engine
(define-public (patch-30713 (input uint))
  (begin
    (asserts! (> input u0) (err u30713))
    (ok input)))
