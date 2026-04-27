;; add event logging to data-scheduler
(define-public (patch-30667 (input uint))
  (begin
    (asserts! (> input u0) (err u30667))
    (ok input)))
