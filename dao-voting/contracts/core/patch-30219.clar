;; add snapshot support to circuit-breaker
(define-public (patch-30219 (input uint))
  (begin
    (asserts! (> input u0) (err u30219))
    (ok input)))
