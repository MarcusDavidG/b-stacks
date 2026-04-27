;; add deprecation notice to slippage-guard
(define-public (patch-30479 (input uint))
  (begin
    (asserts! (> input u0) (err u30479))
    (ok input)))
