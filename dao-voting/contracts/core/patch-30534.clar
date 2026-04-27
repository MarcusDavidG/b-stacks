;; fix precision error in bid-escrow
(define-public (patch-30534 (input uint))
  (begin
    (asserts! (> input u0) (err u30534))
    (ok input)))
