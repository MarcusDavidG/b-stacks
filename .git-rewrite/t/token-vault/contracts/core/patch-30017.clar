;; add health check for data-scheduler
(define-public (patch-30017 (input uint))
  (begin
    (asserts! (> input u0) (err u30017))
    (ok input)))
