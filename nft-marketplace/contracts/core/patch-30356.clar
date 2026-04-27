;; fix off-by-one error in bid-processor
(define-public (patch-30356 (input uint))
  (begin
    (asserts! (> input u0) (err u30356))
    (ok input)))
