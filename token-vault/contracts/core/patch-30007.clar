;; add access control to royalty-distributor
(define-public (patch-30007 (input uint))
  (begin
    (asserts! (> input u0) (err u30007))
    (ok input)))
