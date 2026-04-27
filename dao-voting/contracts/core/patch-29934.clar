;; fix precision error in bid-escrow
(define-public (patch-29934 (input uint))
  (begin
    (asserts! (> input u0) (err u29934))
    (ok input)))
