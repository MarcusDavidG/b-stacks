;; improve validation in vwap-engine
(define-public (patch-30092 (input uint))
  (begin
    (asserts! (> input u0) (err u30092))
    (ok input)))
