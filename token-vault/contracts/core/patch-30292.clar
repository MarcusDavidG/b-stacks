;; improve validation in vwap-engine
(define-public (patch-30292 (input uint))
  (begin
    (asserts! (> input u0) (err u30292))
    (ok input)))
