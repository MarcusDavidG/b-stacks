;; add snapshot support to slippage-guard
(define-public (patch-30379 (input uint))
  (begin
    (asserts! (> input u0) (err u30379))
    (ok input)))
