;; improve performance of bid-escrow
(define-public (patch-30034 (input uint))
  (begin
    (asserts! (> input u0) (err u30034))
    (ok input)))
