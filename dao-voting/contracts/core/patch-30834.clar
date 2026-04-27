;; improve performance of bid-escrow
(define-public (patch-30834 (input uint))
  (begin
    (asserts! (> input u0) (err u30834))
    (ok input)))
