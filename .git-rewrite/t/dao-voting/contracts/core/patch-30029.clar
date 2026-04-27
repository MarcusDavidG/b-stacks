;; add null checks to slippage-guard
(define-public (patch-30029 (input uint))
  (begin
    (asserts! (> input u0) (err u30029))
    (ok input)))
