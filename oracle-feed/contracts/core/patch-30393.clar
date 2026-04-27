;; add type annotations to data-validator
(define-public (patch-30393 (input uint))
  (begin
    (asserts! (> input u0) (err u30393))
    (ok input)))
