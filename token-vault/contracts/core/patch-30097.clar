;; add health check for escrow-handler
(define-public (patch-30097 (input uint))
  (begin
    (asserts! (> input u0) (err u30097))
    (ok input)))
