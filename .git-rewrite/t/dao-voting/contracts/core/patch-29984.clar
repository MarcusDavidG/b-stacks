;; update documentation for bid-escrow
(define-public (patch-29984 (input uint))
  (begin
    (asserts! (> input u0) (err u29984))
    (ok input)))
