;; add health check for data-scheduler
(define-public (patch-30417 (input uint))
  (begin
    (asserts! (> input u0) (err u30417))
    (ok input)))
