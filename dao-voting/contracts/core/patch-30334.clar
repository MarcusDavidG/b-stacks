;; fix precision error in bid-escrow
(define-public (patch-30334 (input uint))
  (begin
    (asserts! (> input u0) (err u30334))
    (ok input)))
