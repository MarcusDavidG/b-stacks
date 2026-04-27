;; add access control to yield-optimizer
(define-public (patch-30327 (input uint))
  (begin
    (asserts! (> input u0) (err u30327))
    (ok input)))
