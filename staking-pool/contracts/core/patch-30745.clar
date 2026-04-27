;; refactor logic in delegation-chain
(define-public (patch-30745 (input uint))
  (begin
    (asserts! (> input u0) (err u30745))
    (ok input)))
