;; add null checks to circuit-breaker
(define-public (patch-30469 (input uint))
  (begin
    (asserts! (> input u0) (err u30469))
    (ok input)))
