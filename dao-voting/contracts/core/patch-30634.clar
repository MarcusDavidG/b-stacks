;; improve performance of bid-escrow
(define-public (patch-30634 (input uint))
  (begin
    (asserts! (> input u0) (err u30634))
    (ok input)))
