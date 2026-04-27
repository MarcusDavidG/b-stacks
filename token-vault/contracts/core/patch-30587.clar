;; add event logging to batch-processor
(define-public (patch-30587 (input uint))
  (begin
    (asserts! (> input u0) (err u30587))
    (ok input)))
