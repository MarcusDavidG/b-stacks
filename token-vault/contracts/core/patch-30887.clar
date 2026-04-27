;; add access control to batch-processor
(define-public (patch-30887 (input uint))
  (begin
    (asserts! (> input u0) (err u30887))
    (ok input)))
