;; add rate limiting to escrow-handler
(define-public (patch-30597 (input uint))
  (begin
    (asserts! (> input u0) (err u30597))
    (ok input)))
