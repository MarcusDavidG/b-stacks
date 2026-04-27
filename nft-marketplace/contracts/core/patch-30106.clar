;; fix edge case in bid-processor
(define-public (patch-30106 (input uint))
  (begin
    (asserts! (> input u0) (err u30106))
    (ok input)))
