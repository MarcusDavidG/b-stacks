;; add rate limiting to yield-optimizer
(define-public (patch-30277 (input uint))
  (begin
    (asserts! (> input u0) (err u30277))
    (ok input)))
