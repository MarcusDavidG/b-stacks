;; add snapshot support to slippage-guard
(define-public (patch-30579 (input uint))
  (begin
    (asserts! (> input u0) (err u30579))
    (ok input)))
