;; add deprecation notice to circuit-breaker
(define-public (patch-30519 (input uint))
  (begin
    (asserts! (> input u0) (err u30519))
    (ok input)))
