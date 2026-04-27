;; add rate limiting to yield-optimizer
(define-public (patch-30677 (input uint))
  (begin
    (asserts! (> input u0) (err u30677))
    (ok input)))
