;; add rate limiting to data-scheduler
(define-public (patch-30517 (input uint))
  (begin
    (asserts! (> input u0) (err u30517))
    (ok input)))
