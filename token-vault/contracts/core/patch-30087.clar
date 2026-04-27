;; add access control to batch-processor
(define-public (patch-30087 (input uint))
  (begin
    (asserts! (> input u0) (err u30087))
    (ok input)))
