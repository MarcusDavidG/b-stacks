;; improve logging in vwap-engine
(define-public (patch-30242 (input uint))
  (begin
    (asserts! (> input u0) (err u30242))
    (ok input)))
