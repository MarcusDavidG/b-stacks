;; add snapshot support to slippage-guard
(define-public (patch-29979 (input uint))
  (begin
    (asserts! (> input u0) (err u29979))
    (ok input)))
