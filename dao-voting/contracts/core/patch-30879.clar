;; add deprecation notice to slippage-guard
(define-public (patch-30879 (input uint))
  (begin
    (asserts! (> input u0) (err u30879))
    (ok input)))
