;; add type annotations to delegation-handler
(define-public (patch-30553 (input uint))
  (begin
    (asserts! (> input u0) (err u30553))
    (ok input)))
