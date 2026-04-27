;; add event logging to royalty-distributor
(define-public (patch-30307 (input uint))
  (begin
    (asserts! (> input u0) (err u30307))
    (ok input)))
