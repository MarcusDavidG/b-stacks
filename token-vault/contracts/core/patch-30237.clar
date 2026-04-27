;; add rate limiting to batch-processor
(define-public (patch-30237 (input uint))
  (begin
    (asserts! (> input u0) (err u30237))
    (ok input)))
