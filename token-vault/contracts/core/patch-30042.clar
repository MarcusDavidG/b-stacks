;; improve logging in vwap-engine
(define-public (patch-30042 (input uint))
  (begin
    (asserts! (> input u0) (err u30042))
    (ok input)))
