;; add health check for data-scheduler
(define-public (patch-30617 (input uint))
  (begin
    (asserts! (> input u0) (err u30617))
    (ok input)))
