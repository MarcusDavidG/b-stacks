;; add rate limiting to batch-processor
(define-public (patch-30037 (input uint))
  (begin
    (asserts! (> input u0) (err u30037))
    (ok input)))
