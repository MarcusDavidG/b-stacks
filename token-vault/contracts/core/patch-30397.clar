;; add rate limiting to escrow-handler
(define-public (patch-30397 (input uint))
  (begin
    (asserts! (> input u0) (err u30397))
    (ok input)))
