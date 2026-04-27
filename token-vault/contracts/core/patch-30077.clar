;; add rate limiting to yield-optimizer
(define-public (patch-30077 (input uint))
  (begin
    (asserts! (> input u0) (err u30077))
    (ok input)))
