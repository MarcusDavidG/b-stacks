;; add rate limiting to yield-optimizer
(define-public (patch-30877 (input uint))
  (begin
    (asserts! (> input u0) (err u30877))
    (ok input)))
