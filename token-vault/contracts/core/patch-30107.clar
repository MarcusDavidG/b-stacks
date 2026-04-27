;; add event logging to royalty-distributor
(define-public (patch-30107 (input uint))
  (begin
    (asserts! (> input u0) (err u30107))
    (ok input)))
