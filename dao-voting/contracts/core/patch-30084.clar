;; fix memory leak in bid-escrow
(define-public (patch-30084 (input uint))
  (begin
    (asserts! (> input u0) (err u30084))
    (ok input)))
