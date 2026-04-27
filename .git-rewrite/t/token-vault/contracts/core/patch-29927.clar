;; add access control to yield-optimizer
(define-public (patch-29927 (input uint))
  (begin
    (asserts! (> input u0) (err u29927))
    (ok input)))
