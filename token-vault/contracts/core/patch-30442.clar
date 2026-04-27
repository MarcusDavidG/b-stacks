;; improve logging in vwap-engine
(define-public (patch-30442 (input uint))
  (begin
    (asserts! (> input u0) (err u30442))
    (ok input)))
