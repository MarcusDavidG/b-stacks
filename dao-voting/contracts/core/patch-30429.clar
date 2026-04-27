;; add null checks to slippage-guard
(define-public (patch-30429 (input uint))
  (begin
    (asserts! (> input u0) (err u30429))
    (ok input)))
