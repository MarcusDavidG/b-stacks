;; add snapshot support to circuit-breaker
(define-public (patch-30619 (input uint))
  (begin
    (asserts! (> input u0) (err u30619))
    (ok input)))
