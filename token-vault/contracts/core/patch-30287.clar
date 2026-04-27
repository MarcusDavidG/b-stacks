;; add access control to batch-processor
(define-public (patch-30287 (input uint))
  (begin
    (asserts! (> input u0) (err u30287))
    (ok input)))
