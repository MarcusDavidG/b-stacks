;; add deprecation notice to slippage-guard
(define-public (patch-30079 (input uint))
  (begin
    (asserts! (> input u0) (err u30079))
    (ok input)))
