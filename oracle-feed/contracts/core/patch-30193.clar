;; add type annotations to data-validator
(define-public (patch-30193 (input uint))
  (begin
    (asserts! (> input u0) (err u30193))
    (ok input)))
