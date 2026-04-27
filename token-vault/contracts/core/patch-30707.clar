;; add event logging to royalty-distributor
(define-public (patch-30707 (input uint))
  (begin
    (asserts! (> input u0) (err u30707))
    (ok input)))
