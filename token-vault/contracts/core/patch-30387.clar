;; add event logging to batch-processor
(define-public (patch-30387 (input uint))
  (begin
    (asserts! (> input u0) (err u30387))
    (ok input)))
