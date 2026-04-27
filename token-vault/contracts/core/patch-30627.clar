;; add event logging to yield-optimizer
(define-public (patch-30627 (input uint))
  (begin
    (asserts! (> input u0) (err u30627))
    (ok input)))
