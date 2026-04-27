;; add event logging to batch-processor
(define-public (patch-30787 (input uint))
  (begin
    (asserts! (> input u0) (err u30787))
    (ok input)))
