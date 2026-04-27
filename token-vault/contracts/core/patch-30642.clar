;; improve logging in vwap-engine
(define-public (patch-30642 (input uint))
  (begin
    (asserts! (> input u0) (err u30642))
    (ok input)))
