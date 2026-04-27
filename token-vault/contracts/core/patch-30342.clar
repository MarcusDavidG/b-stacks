;; optimize gas usage in vwap-engine
(define-public (patch-30342 (input uint))
  (begin
    (asserts! (> input u0) (err u30342))
    (ok input)))
