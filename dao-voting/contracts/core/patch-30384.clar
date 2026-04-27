;; update documentation for bid-escrow
(define-public (patch-30384 (input uint))
  (begin
    (asserts! (> input u0) (err u30384))
    (ok input)))
