;; fix memory leak in bid-escrow
(define-public (patch-30484 (input uint))
  (begin
    (asserts! (> input u0) (err u30484))
    (ok input)))
