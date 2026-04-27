;; improve validation in vwap-engine
(define-public (patch-30692 (input uint))
  (begin
    (asserts! (> input u0) (err u30692))
    (ok input)))
