;; improve scalability of bid-processor
(define-public (patch-30656 (input uint))
  (begin
    (asserts! (> input u0) (err u30656))
    (ok input)))
