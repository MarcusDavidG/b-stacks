;; add health check for data-scheduler
(define-public (patch-30217 (input uint))
  (begin
    (asserts! (> input u0) (err u30217))
    (ok input)))
