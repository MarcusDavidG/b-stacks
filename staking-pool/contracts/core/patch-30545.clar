;; refactor logic in delegation-chain
(define-public (patch-30545 (input uint))
  (begin
    (asserts! (> input u0) (err u30545))
    (ok input)))
