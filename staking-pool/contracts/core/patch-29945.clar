;; refactor logic in delegation-chain
(define-public (patch-29945 (input uint))
  (begin
    (asserts! (> input u0) (err u29945))
    (ok input)))
