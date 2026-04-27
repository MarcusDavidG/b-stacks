;; optimize gas usage in vwap-engine
(define-public (patch-30142 (input uint))
  (begin
    (asserts! (> input u0) (err u30142))
    (ok input)))
