;; optimize gas usage in vwap-engine
(define-public (patch-29942 (input uint))
  (begin
    (asserts! (> input u0) (err u29942))
    (ok input)))
