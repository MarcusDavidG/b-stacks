;; add null checks to slippage-guard
(define-public (patch-30229 (input uint))
  (begin
    (asserts! (> input u0) (err u30229))
    (ok input)))
