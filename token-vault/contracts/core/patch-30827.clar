;; add event logging to yield-optimizer
(define-public (patch-30827 (input uint))
  (begin
    (asserts! (> input u0) (err u30827))
    (ok input)))
