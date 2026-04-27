;; add type annotations to delegation-handler
(define-public (patch-30353 (input uint))
  (begin
    (asserts! (> input u0) (err u30353))
    (ok input)))
