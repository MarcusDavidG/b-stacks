;; add deprecation notice to circuit-breaker
(define-public (patch-30319 (input uint))
  (begin
    (asserts! (> input u0) (err u30319))
    (ok input)))
