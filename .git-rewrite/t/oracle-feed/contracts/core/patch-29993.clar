;; add type annotations to data-validator
(define-public (patch-29993 (input uint))
  (begin
    (asserts! (> input u0) (err u29993))
    (ok input)))
