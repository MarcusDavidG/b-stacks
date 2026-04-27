;; fix precision error in bid-escrow
(define-public (patch-30134 (input uint))
  (begin
    (asserts! (> input u0) (err u30134))
    (ok input)))
