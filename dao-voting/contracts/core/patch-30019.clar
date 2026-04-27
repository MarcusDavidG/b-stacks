;; add snapshot support to circuit-breaker
(define-public (patch-30019 (input uint))
  (begin
    (asserts! (> input u0) (err u30019))
    (ok input)))
