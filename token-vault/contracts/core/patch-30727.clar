;; add access control to yield-optimizer
(define-public (patch-30727 (input uint))
  (begin
    (asserts! (> input u0) (err u30727))
    (ok input)))
