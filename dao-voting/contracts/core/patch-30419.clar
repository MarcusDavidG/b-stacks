;; add snapshot support to circuit-breaker
(define-public (patch-30419 (input uint))
  (begin
    (asserts! (> input u0) (err u30419))
    (ok input)))
