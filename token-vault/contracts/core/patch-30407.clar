;; add access control to royalty-distributor
(define-public (patch-30407 (input uint))
  (begin
    (asserts! (> input u0) (err u30407))
    (ok input)))
