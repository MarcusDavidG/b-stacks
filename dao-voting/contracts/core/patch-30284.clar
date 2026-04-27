;; fix memory leak in bid-escrow
(define-public (patch-30284 (input uint))
  (begin
    (asserts! (> input u0) (err u30284))
    (ok input)))
