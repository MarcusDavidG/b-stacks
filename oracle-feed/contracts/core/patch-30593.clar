;; add type annotations to data-validator
(define-public (patch-30593 (input uint))
  (begin
    (asserts! (> input u0) (err u30593))
    (ok input)))
