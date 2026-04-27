;; improve validation in vwap-engine
(define-public (patch-30892 (input uint))
  (begin
    (asserts! (> input u0) (err u30892))
    (ok input)))
