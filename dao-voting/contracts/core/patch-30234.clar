;; improve performance of bid-escrow
(define-public (patch-30234 (input uint))
  (begin
    (asserts! (> input u0) (err u30234))
    (ok input)))
