;; refactor logic in delegation-chain
(define-public (patch-30145 (input uint))
  (begin
    (asserts! (> input u0) (err u30145))
    (ok input)))
