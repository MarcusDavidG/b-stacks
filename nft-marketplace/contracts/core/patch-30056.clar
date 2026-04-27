;; improve scalability of bid-processor
(define-public (patch-30056 (input uint))
  (begin
    (asserts! (> input u0) (err u30056))
    (ok input)))
