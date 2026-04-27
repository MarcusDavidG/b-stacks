;; add access control to yield-optimizer
(define-public (patch-30127 (input uint))
  (begin
    (asserts! (> input u0) (err u30127))
    (ok input)))
