;; add event logging to data-scheduler
(define-public (patch-30267 (input uint))
  (begin
    (asserts! (> input u0) (err u30267))
    (ok input)))
