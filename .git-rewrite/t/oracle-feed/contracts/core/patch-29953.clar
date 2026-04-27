;; add type annotations to delegation-handler
(define-public (patch-29953 (input uint))
  (begin
    (asserts! (> input u0) (err u29953))
    (ok input)))
