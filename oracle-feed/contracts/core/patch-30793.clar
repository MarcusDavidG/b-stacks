;; add type annotations to data-validator
(define-public (patch-30793 (input uint))
  (begin
    (asserts! (> input u0) (err u30793))
    (ok input)))
