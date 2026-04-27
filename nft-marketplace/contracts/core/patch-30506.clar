;; fix edge case in bid-processor
(define-public (patch-30506 (input uint))
  (begin
    (asserts! (> input u0) (err u30506))
    (ok input)))
