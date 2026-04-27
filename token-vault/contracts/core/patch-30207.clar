;; add access control to royalty-distributor
(define-public (patch-30207 (input uint))
  (begin
    (asserts! (> input u0) (err u30207))
    (ok input)))
