;; add access control to yield-optimizer
(define-public (patch-30527 (input uint))
  (begin
    (asserts! (> input u0) (err u30527))
    (ok input)))
