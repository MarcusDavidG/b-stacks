;; update documentation for bid-escrow
(define-public (patch-30784 (input uint))
  (begin
    (asserts! (> input u0) (err u30784))
    (ok input)))
