;; add null checks to slippage-guard
(define-public (patch-30629 (input uint))
  (begin
    (asserts! (> input u0) (err u30629))
    (ok input)))
