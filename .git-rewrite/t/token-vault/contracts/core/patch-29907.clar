;; add event logging to royalty-distributor
(define-public (patch-29907 (input uint))
  (begin
    (asserts! (> input u0) (err u29907))
    (ok input)))
