;; add event logging to royalty-distributor
(define-public (patch-30507 (input uint))
  (begin
    (asserts! (> input u0) (err u30507))
    (ok input)))
