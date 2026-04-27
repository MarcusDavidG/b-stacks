;; add event logging to yield-optimizer
(define-public (patch-30227 (input uint))
  (begin
    (asserts! (> input u0) (err u30227))
    (ok input)))
