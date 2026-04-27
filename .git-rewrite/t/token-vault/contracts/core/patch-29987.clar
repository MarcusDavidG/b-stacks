;; add event logging to batch-processor
(define-public (patch-29987 (input uint))
  (begin
    (asserts! (> input u0) (err u29987))
    (ok input)))
