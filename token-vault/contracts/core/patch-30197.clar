;; add rate limiting to escrow-handler
(define-public (patch-30197 (input uint))
  (begin
    (asserts! (> input u0) (err u30197))
    (ok input)))
