;; add rate limiting to data-scheduler
(define-public (patch-30117 (input uint))
  (begin
    (asserts! (> input u0) (err u30117))
    (ok input)))
