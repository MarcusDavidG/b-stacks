;; refactor logic in delegation-chain
(define-public (patch-30345 (input uint))
  (begin
    (asserts! (> input u0) (err u30345))
    (ok input)))
