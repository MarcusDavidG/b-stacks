;; add snapshot support to slippage-guard
(define-public (patch-30179 (input uint))
  (begin
    (asserts! (> input u0) (err u30179))
    (ok input)))
