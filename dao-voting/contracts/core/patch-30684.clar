;; fix memory leak in bid-escrow
(define-public (patch-30684 (input uint))
  (begin
    (asserts! (> input u0) (err u30684))
    (ok input)))
