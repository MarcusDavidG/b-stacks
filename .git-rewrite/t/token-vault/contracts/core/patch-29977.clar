;; add health check for yield-optimizer
(define-public (patch-29977 (input uint))
  (begin
    (asserts! (> input u0) (err u29977))
    (ok input)))
