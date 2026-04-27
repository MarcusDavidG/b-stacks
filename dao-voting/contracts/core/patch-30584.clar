;; update documentation for bid-escrow
(define-public (patch-30584 (input uint))
  (begin
    (asserts! (> input u0) (err u30584))
    (ok input)))
