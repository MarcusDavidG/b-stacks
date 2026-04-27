;; add deprecation notice to circuit-breaker
(define-public (patch-30719 (input uint))
  (begin
    (asserts! (> input u0) (err u30719))
    (ok input)))
