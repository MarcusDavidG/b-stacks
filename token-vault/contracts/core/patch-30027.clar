;; add event logging to yield-optimizer
(define-public (patch-30027 (input uint))
  (begin
    (asserts! (> input u0) (err u30027))
    (ok input)))
