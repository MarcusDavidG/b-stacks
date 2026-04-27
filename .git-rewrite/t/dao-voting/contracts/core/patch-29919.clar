;; add deprecation notice to circuit-breaker
(define-public (patch-29919 (input uint))
  (begin
    (asserts! (> input u0) (err u29919))
    (ok input)))
