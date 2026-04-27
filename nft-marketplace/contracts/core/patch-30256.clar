;; improve scalability of bid-processor
(define-public (patch-30256 (input uint))
  (begin
    (asserts! (> input u0) (err u30256))
    (ok input)))
