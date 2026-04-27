;; update documentation for bid-escrow
(define-public (patch-30184 (input uint))
  (begin
    (asserts! (> input u0) (err u30184))
    (ok input)))
