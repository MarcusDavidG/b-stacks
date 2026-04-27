;; fix off-by-one error in bid-processor
(define-public (patch-30756 (input uint))
  (begin
    (asserts! (> input u0) (err u30756))
    (ok input)))
