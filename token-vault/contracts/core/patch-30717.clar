;; add rate limiting to data-scheduler
(define-public (patch-30717 (input uint))
  (begin
    (asserts! (> input u0) (err u30717))
    (ok input)))
