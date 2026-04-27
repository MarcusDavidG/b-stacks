;; fix edge case in bid-processor
(define-public (patch-30706 (input uint))
  (begin
    (asserts! (> input u0) (err u30706))
    (ok input)))
