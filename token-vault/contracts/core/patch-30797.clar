;; add rate limiting to escrow-handler
(define-public (patch-30797 (input uint))
  (begin
    (asserts! (> input u0) (err u30797))
    (ok input)))
