;; optimize gas usage in vwap-engine
(define-public (patch-30742 (input uint))
  (begin
    (asserts! (> input u0) (err u30742))
    (ok input)))
