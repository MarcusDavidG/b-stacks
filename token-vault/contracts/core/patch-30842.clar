;; improve logging in vwap-engine
(define-public (patch-30842 (input uint))
  (begin
    (asserts! (> input u0) (err u30842))
    (ok input)))
