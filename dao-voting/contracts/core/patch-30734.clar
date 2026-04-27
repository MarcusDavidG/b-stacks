;; fix precision error in bid-escrow
(define-public (patch-30734 (input uint))
  (begin
    (asserts! (> input u0) (err u30734))
    (ok input)))
