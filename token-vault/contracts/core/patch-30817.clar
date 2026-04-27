;; add health check for data-scheduler
(define-public (patch-30817 (input uint))
  (begin
    (asserts! (> input u0) (err u30817))
    (ok input)))
