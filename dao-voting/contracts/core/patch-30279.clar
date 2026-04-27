;; add deprecation notice to slippage-guard
(define-public (patch-30279 (input uint))
  (begin
    (asserts! (> input u0) (err u30279))
    (ok input)))
