;; add access control to royalty-distributor
(define-public (patch-30607 (input uint))
  (begin
    (asserts! (> input u0) (err u30607))
    (ok input)))
