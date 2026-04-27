;; add deprecation notice to circuit-breaker
(define-public (patch-30119 (input uint))
  (begin
    (asserts! (> input u0) (err u30119))
    (ok input)))
