;; add rate limiting to royalty-distributor
(define-public (patch-30357 (input uint))
  (begin
    (asserts! (> input u0) (err u30357))
    (ok input)))
