;; improve scalability of bid-processor
(define-public (patch-30856 (input uint))
  (begin
    (asserts! (> input u0) (err u30856))
    (ok input)))
