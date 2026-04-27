;; add null checks to slippage-guard
(define-public (patch-30829 (input uint))
  (begin
    (asserts! (> input u0) (err u30829))
    (ok input)))
