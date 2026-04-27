;; improve validation in vwap-engine
(define-public (patch-30492 (input uint))
  (begin
    (asserts! (> input u0) (err u30492))
    (ok input)))
