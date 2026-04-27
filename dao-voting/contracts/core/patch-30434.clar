;; improve performance of bid-escrow
(define-public (patch-30434 (input uint))
  (begin
    (asserts! (> input u0) (err u30434))
    (ok input)))
