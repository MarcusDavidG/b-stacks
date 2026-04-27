;; add event logging to data-scheduler
(define-public (patch-30067 (input uint))
  (begin
    (asserts! (> input u0) (err u30067))
    (ok input)))
