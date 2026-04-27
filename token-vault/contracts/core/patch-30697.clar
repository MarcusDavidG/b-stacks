;; add health check for escrow-handler
(define-public (patch-30697 (input uint))
  (begin
    (asserts! (> input u0) (err u30697))
    (ok input)))
