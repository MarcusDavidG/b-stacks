;; add snapshot support to slippage-guard
(define-public (patch-30779 (input uint))
  (begin
    (asserts! (> input u0) (err u30779))
    (ok input)))
