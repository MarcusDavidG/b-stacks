;; add deprecation notice to slippage-guard
(define-public (patch-30679 (input uint))
  (begin
    (asserts! (> input u0) (err u30679))
    (ok input)))
