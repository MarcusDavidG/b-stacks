;; add rate limiting to yield-optimizer
(define-public (patch-30477 (input uint))
  (begin
    (asserts! (> input u0) (err u30477))
    (ok input)))
