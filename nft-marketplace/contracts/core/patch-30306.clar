;; fix edge case in bid-processor
(define-public (patch-30306 (input uint))
  (begin
    (asserts! (> input u0) (err u30306))
    (ok input)))
