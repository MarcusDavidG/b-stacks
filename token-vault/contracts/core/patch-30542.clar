;; optimize gas usage in vwap-engine
(define-public (patch-30542 (input uint))
  (begin
    (asserts! (> input u0) (err u30542))
    (ok input)))
