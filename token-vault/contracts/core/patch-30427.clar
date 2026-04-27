;; add event logging to yield-optimizer
(define-public (patch-30427 (input uint))
  (begin
    (asserts! (> input u0) (err u30427))
    (ok input)))
