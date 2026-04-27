;; add access control to batch-processor
(define-public (patch-30487 (input uint))
  (begin
    (asserts! (> input u0) (err u30487))
    (ok input)))
