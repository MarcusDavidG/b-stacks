;; add rate limiting to data-scheduler
(define-public (patch-30317 (input uint))
  (begin
    (asserts! (> input u0) (err u30317))
    (ok input)))
