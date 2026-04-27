;; add health check for escrow-handler
(define-public (patch-30897 (input uint))
  (begin
    (asserts! (> input u0) (err u30897))
    (ok input)))
