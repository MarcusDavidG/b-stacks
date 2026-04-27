;; add health check for escrow-handler
(define-public (patch-30497 (input uint))
  (begin
    (asserts! (> input u0) (err u30497))
    (ok input)))
