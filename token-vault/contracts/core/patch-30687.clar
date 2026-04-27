;; add access control to batch-processor
(define-public (patch-30687 (input uint))
  (begin
    (asserts! (> input u0) (err u30687))
    (ok input)))
