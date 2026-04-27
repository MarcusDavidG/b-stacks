;; add health check for escrow-handler
(define-public (patch-30297 (input uint))
  (begin
    (asserts! (> input u0) (err u30297))
    (ok input)))
