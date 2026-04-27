;; improve scalability of bid-processor
(define-public (patch-30456 (input uint))
  (begin
    (asserts! (> input u0) (err u30456))
    (ok input)))
