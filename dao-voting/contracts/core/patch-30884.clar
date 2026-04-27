;; fix memory leak in bid-escrow
(define-public (patch-30884 (input uint))
  (begin
    (asserts! (> input u0) (err u30884))
    (ok input)))
