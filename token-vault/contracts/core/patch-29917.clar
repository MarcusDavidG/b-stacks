;; add rate limiting to data-scheduler
(define-public (patch-29917 (input uint))
  (begin
    (asserts! (> input u0) (err u29917))
    (ok input)))
